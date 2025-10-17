unit MyHorzDaysView;

interface

uses
  System.Classes, System.SysUtils, System.Types, System.Math, System.DateUtils,
  System.Generics.Collections, System.Generics.Defaults, System.Variants,
  PlannersEh;

type
  { Уплотнённый горизонтальный вид дней с корректной укладкой плиток по ячейкам }
  THorzDayslineTight = class(TPlannerHorzDayslineViewEh)
  private
    FTopPad: Integer;      // отступ сверху внутри строки ресурса
    FBottomPad: Integer;   // отступ снизу внутри строки ресурса
  protected
    procedure SetDisplayPosesSpanItems; override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property TopPad: Integer read FTopPad write FTopPad default 2;
    property BottomPad: Integer read FBottomPad write FBottomPad default 2;
  end;

implementation

const
  BASE_TILE_H = 15;   // желаемая высота «строки»
  MIN_TILE_H  = 6;    // нижний предел при очень плотной укладке
  PAD_L = 0; PAD_T = 0; PAD_R = 0; PAD_B = 0; // внутренние поля у плитки

function DateOnly(const DT: TDateTime): TDate; inline;
begin
  Result := System.Int(DT);
end;

function IntersectsDay(const StartT, EndT: TDateTime; const D: TDate): Boolean;
var
  EndAdj: TDateTime;
begin
  // чтобы событие, заканчивающееся 00:00 следующего дня, относилось к предыдущему
  if EndT > StartT
    then EndAdj := IncMilliSecond(EndT, -1)
    else EndAdj := EndT;
  Result := (StartT < D + 1) and (EndAdj >= D);
end;

{ THorzDayslineTight }

constructor THorzDayslineTight.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FTopPad := 2;
  FBottomPad := 2;
end;

procedure THorzDayslineTight.SetDisplayPosesSpanItems;
type
  TSpanList = TList<TTimeSpanDisplayItemEh>;
var
  // ResourceID -> вертикальная полоса (Top..Bottom) для строки ресурса
  ResBand: TDictionary<Variant, TRect>;
  // "ResID|DayInt" -> все спаны, попадающие в эту ячейку
  CellMap: TDictionary<string, TSpanList>;

  function MakeCellKey(const ResID: Variant; DayInt: Integer): string;
  begin
    Result := VarToStr(ResID) + '|' + IntToStr(DayInt);
  end;

  procedure CellMapAdd(const Key: string; SI: TTimeSpanDisplayItemEh);
  var L: TSpanList;
  begin
    if not CellMap.TryGetValue(Key, L) then
    begin
      L := TSpanList.Create;
      CellMap.Add(Key, L);
    end;
    L.Add(SI);
  end;

var
  i: Integer;
  S: TTimeSpanDisplayItemEh;
  R, RowR: TRect;

  StartView, EndView: TDateTime;
  StartD, EndD, D: TDate;

  Pair: TPair<string, TSpanList>;
  L: TSpanList;

  // уровни и их «концы» для алгоритма «первый свободный»
  Ends: TList<TDateTime>;
  ItemLevel: TDictionary<TTimeSpanDisplayItemEh, Integer>;
  LevelIdx, LevelCount: Integer;
  It: TTimeSpanDisplayItemEh;
  j: Integer;

  // размеры раскладки по высоте
  AreaTop, AreaBottom, AreaH: Integer;
  Count, BaseH, Extra, idx, y, TileH: Integer;

  // компаратор: стабильный порядок внутри дня
  Cmp: IComparer<TTimeSpanDisplayItemEh>;
begin
  // даём EhLib рассчитать базовые BoundRect (X-координаты/переносы)
  inherited;

  ResBand := TDictionary<Variant, TRect>.Create;
  CellMap := TDictionary<string, TSpanList>.Create;
  try
    // границы строк по ресурсам
    for i := 0 to SpanItemsCount - 1 do
    begin
      S := SpanItems[i];
      if (S = nil) or (S.PlanItem = nil) then
        Continue;

      R := S.BoundRect;
      if not ResBand.TryGetValue(S.PlanItem.ResourceID, RowR) then
        RowR := R
      else
      begin
        if R.Top    < RowR.Top    then RowR.Top    := R.Top;
        if R.Bottom > RowR.Bottom then RowR.Bottom := R.Bottom;
      end;
      ResBand.AddOrSetValue(S.PlanItem.ResourceID, RowR);
    end;

    // наполняем карту ячеек (ресурс + день)
    GetViewPeriod(StartView, EndView);
    StartD := DateOnly(StartView);
    EndD   := DateOnly(EndView);

    for i := 0 to SpanItemsCount - 1 do
    begin
      S := SpanItems[i];
      if (S = nil) or (S.PlanItem = nil) then
        Continue;

      D := StartD;
      while D <= EndD do
      begin
        if IntersectsDay(S.PlanItem.StartTime, S.PlanItem.EndTime, D) then
          CellMapAdd(MakeCellKey(S.PlanItem.ResourceID, Trunc(D)), S);
        D := IncDay(D, 1);
      end;
    end;

    // компаратор, чтобы порядок был детерминированный
    Cmp := TComparer<TTimeSpanDisplayItemEh>.Construct(
      function(const A, B: TTimeSpanDisplayItemEh): Integer
      var
        da, db, ta, tb, ea, eb: TDateTime;
        lenA, lenB: Double;
      begin
        // по дате старта, времени старта, времени окончания,
        // затем «длиннее выше», затем Title, затем ItemID, затем адрес
        da := DateOnly(A.PlanItem.StartTime);
        db := DateOnly(B.PlanItem.StartTime);
        Result := CompareDateTime(da, db);
        if Result <> 0 then Exit;

        ta := Frac(A.PlanItem.StartTime);
        tb := Frac(B.PlanItem.StartTime);
        Result := CompareDateTime(ta, tb);
        if Result <> 0 then Exit;

        ea := Frac(A.PlanItem.EndTime);
        eb := Frac(B.PlanItem.EndTime);
        Result := CompareDateTime(ea, eb);
        if Result <> 0 then Exit;

        lenA := A.PlanItem.EndTime - A.PlanItem.StartTime;
        lenB := B.PlanItem.EndTime - B.PlanItem.StartTime;
        if lenA > lenB then Exit(-1) else
        if lenA < lenB then Exit(+1);

        Result := CompareText(A.PlanItem.Title, B.PlanItem.Title);
        if Result <> 0 then Exit;

        Result := A.PlanItem.ItemID - B.PlanItem.ItemID;
        if Result <> 0 then Exit;

        Result := NativeInt(A) - NativeInt(B);
      end);

    // укладка по каждой ячейке
    for Pair in CellMap do
    begin
      L := Pair.Value;
      if (L = nil) or (L.Count = 0) then
        Continue;

      // стабильная сортировка
      L.Sort(Cmp);

      // назначаем уровни по алгоритму «первый свободный»
      // НО не даём уровням переиспользоваться внутри суток: если «по часам» не пересекаются,
      // всё равно оставляем каждому свой уровень — так избегаем случаев одинаковых Top.
      Ends := TList<TDateTime>.Create;
      ItemLevel := TDictionary<TTimeSpanDisplayItemEh, Integer>.Create;
      try
        for i := 0 to L.Count - 1 do
        begin
          It := L[i];

          // сначала ищем свободный уровень (если нужен)
          LevelIdx := -1;
          for j := 0 to Ends.Count - 1 do
            if It.PlanItem.StartTime >= Ends[j] then
            begin
              LevelIdx := j;
              Break;
            end;

          // если «уровень» найден — всё равно отдадим ИНДЕКС (i),
          // чтобы в пределах дня уровни не сжимались.
          if LevelIdx < 0 then
          begin
            Ends.Add(It.PlanItem.EndTime);
            LevelIdx := Ends.Count - 1;
          end
          else
            Ends[LevelIdx] := It.PlanItem.EndTime;

          // фиксируем уникальный уровень = порядковый индекс в списке
          ItemLevel.AddOrSetValue(It, i);
        end;

        // используем ровно Count строк на ячейку
        LevelCount := L.Count;
      finally
        Ends.Free;
      end;

      // размеры вертикальной области строки ресурса с учётом паддингов
      if not ResBand.TryGetValue(L[0].PlanItem.ResourceID, RowR) then
        RowR := L[0].BoundRect;

      AreaTop    := RowR.Top    - Max(0, 10 - FTopPad);
      AreaBottom := RowR.Bottom + Max(0, 10 - FBottomPad);
      if AreaBottom <= AreaTop then
        Continue;

      AreaH := AreaBottom - AreaTop;
      Count := LevelCount;

      // равномерное распределение по высоте
      if Count * BASE_TILE_H <= AreaH then
      begin
        BaseH := BASE_TILE_H;
        Extra := 0;
      end
      else
      begin
        BaseH := Max(MIN_TILE_H, AreaH div Count);
        Extra := AreaH - BaseH * Count; // остаток раздаём по +1 сверху вниз
      end;

      // выставляем Top/Bottom по присвоенному «уровню»
      for i := 0 to L.Count - 1 do
      begin
        It := L[i];
        if not ItemLevel.TryGetValue(It, idx) then
          idx := i;

        // высота для конкретного уровня с учётом «лишних» пикселей
        TileH := BaseH + Ord(idx < Extra);

        y := AreaTop;
        if idx > 0 then
          Inc(y, BaseH * idx + Min(idx, Extra));

        R := It.BoundRect;               // по X не трогаем
        R.Left  := R.Left  + PAD_L;
        R.Right := R.Right - PAD_R;
        R.Top    := y + PAD_T;
        R.Bottom := Min(AreaBottom - PAD_B, R.Top + TileH);
        if R.Bottom <= R.Top then
          R.Bottom := R.Top + 1;

        It.BoundRect := R;
      end;

      ItemLevel.Free;
    end;

  finally
    for Pair in CellMap do
      Pair.Value.Free;
    CellMap.Free;
    ResBand.Free;
  end;
end;

end.

