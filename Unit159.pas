unit Unit159;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.ExtCtrls, DBAxisGridsEh, DBGridEh,
  PlannerCalendarPickerEh, EhLibVCL, GridsEh, SpreadGridsEh, PlannersEh,
  PlannerDataEh,DateUtils, Vcl.StdCtrls,db, Vcl.Menus, Vcl.ComCtrls,
  MemTableDataEh, MemTableEh, Vcl.WinXCtrls, Vcl.Mask, RzEdit, comobj,
  Vcl.Buttons, sBitBtn,MyWeekView,Math;

type
  TForm159 = class(TForm)
    PlannerControlEh1: TPlannerControlEh;
    PlannerDataSourceEh1: TPlannerDataSourceEh;
    PlannerMonthViewEh1: TPlannerMonthViewEh;
    PlannerCalendarPickerEh1: TPlannerCalendarPickerEh;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Button4: TButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    N5: TMenuItem;
    N6: TMenuItem;
    PlannerWeekViewEh1: TPlannerWeekViewEh;
    Button2: TButton;
    PlannerHorzHourslineViewEh1: TPlannerHorzHourslineViewEh;
    PlannerDayViewEh1: TPlannerDayViewEh;
    Button5: TButton;
    PlannerHorzDayslineViewEh1: TPlannerHorzDayslineViewEh;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    TabSheet3: TTabSheet;
    DBGridEh3: TDBGridEh;
    Panel60: TPanel;
    Label115: TLabel;
    Label116: TLabel;
    Label154: TLabel;
    RzDateTimeEdit9: TRzDateTimeEdit;
    RzDateTimeEdit10: TRzDateTimeEdit;
    ComboBox39: TComboBox;
    Panel4: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    SearchBox1: TSearchBox;
    PopupMenu3: TPopupMenu;
    N7: TMenuItem;
    Label5: TLabel;
    SearchBox2: TSearchBox;
    Label6: TLabel;
    ComboBox2: TComboBox;
    RadioGroup1: TRadioGroup;
    N8: TMenuItem;
    ScrollBox1: TScrollBox;
    Panel5: TPanel;
    Button8: TButton;
    Button9: TButton;
    ComboBox3: TComboBox;
    sBitBtn67: TsBitBtn;
    Panel6: TPanel;
    TabSheet4: TTabSheet;
    DBGridEh4: TDBGridEh;
    Panel7: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    RzDateTimeEdit3: TRzDateTimeEdit;
    RzDateTimeEdit4: TRzDateTimeEdit;
    ComboBox4: TComboBox;
    SearchBox3: TSearchBox;
    Label11: TLabel;
    ComboBox5: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel8: TPanel;
    N9: TMenuItem;
    sBitBtn68: TsBitBtn;
    N10: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure loadgridSotrSU;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure PlannerDataSourceEh1ApplyUpdateToDataStorage(
      PlannerDataSource: TPlannerDataSourceEh; PlanItem: TPlannerDataItemEh;
      UpdateStatus: TUpdateStatus);
    procedure PlannerControlEh1SpanItemHintShow(
      PlannerControl: TPlannerControlEh; PlannerView: TCustomPlannerViewEh;
      CursorPos: TPoint; SpanRect: TRect; InSpanCursorPos: TPoint;
      SpanItem: TTimeSpanDisplayItemEh; Params: TPlannerViewSpanHintParamsEh;
      var Processed: Boolean);
    procedure TabSheet2Show(Sender: TObject);
    procedure filterjobs;
    procedure loadgridAllJobs;
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N5Click(Sender: TObject);
    procedure PlannerControlEh1ShowPlanItemDialog(
      PlannerControl: TPlannerControlEh; PlannerView: TCustomPlannerViewEh;
      Item: TPlannerDataItemEh; ChangeMode: TPlanItemChangeModeEh);
    procedure PlannerControlEh1PlannerItemInteractiveChanged(
      PlannerControl: TPlannerControlEh; PlannerView: TCustomPlannerViewEh;
      Item, OldValuesItem: TPlannerDataItemEh);
    procedure N6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button6Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBGridEh2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button7Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure DBGridEh3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure loadgridOrderToSend;
    procedure filterOrderToSend;
    procedure RzDateTimeEdit9Change(Sender: TObject);
    procedure RzDateTimeEdit10Change(Sender: TObject);
    procedure ComboBox39Change(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure SearchBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SearchBox1Change(Sender: TObject);
    procedure RzDateTimeEdit1Change(Sender: TObject);
    procedure RzDateTimeEdit2Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure FillEmptyPlanner;
    procedure FillPlanner;
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure sBitBtn67Click(Sender: TObject);
    procedure Xls_Save(XLSFile:string);
    procedure loadgridLog;
    procedure filterLog;
    procedure TabSheet4Show(Sender: TObject);
    procedure RzDateTimeEdit3Change(Sender: TObject);
    procedure RzDateTimeEdit4Change(Sender: TObject);
    procedure SearchBox3Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure ZoomIn(const Step: Integer = 4);
    procedure ZoomOut(const Step: Integer = 4);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure WeekZoomIn(const Step: Integer = 4);
    procedure WeekZoomOut(const Step: Integer = 4);
    procedure SetWeekVisibleDays(Days: Integer);
    procedure ShowCurrentMonthInWeekView;
    procedure Show7Days;
    procedure Show14Days;
    procedure Show21Days;
    procedure Show28Days;
    procedure Show31Days;
    procedure BitBtn6Click(Sender: TObject);
    procedure ShowMonth_HorzDaysline;
    procedure ShowWeek_HorzDaysline;
    procedure HorzDays_ZoomIn;
    procedure HorzDays_ZoomOut;
    procedure HorzDays_VZoom(const Delta: Integer);
    procedure HorzDays_VZoomIn;
    procedure HorzDays_VZoomOut;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;   MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure HorzDays_ForceRelayout;
    procedure ReplaceHorzDaysWithTight;
    procedure PlannerControlEh1DrawSpanItem(PlannerControl: TPlannerControlEh;
      PlannerView: TCustomPlannerViewEh; SpanItem: TTimeSpanDisplayItemEh;
      Rect: TRect; DrawArgs: TDrawSpanItemArgsEh; var Processed: Boolean);
    procedure N9Click(Sender: TObject);
    procedure sBitBtn68Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
  private
    protected
    procedure ReadState(Reader: TReader); override;
    procedure PromoteWeekViewToMonthRange;
  public
    Frame: TFrame;
  end;


var
  Form159: TForm159;
  PI_id:integer;
  SelectedList:TStringList;
  recins,iddetpo,cntPO,idPO, statusJob:integer;
  clkNum24:integer=0;
  clkNum37:integer=0;
  clkPO:integer=0;
  mas_rec:array of array of string;

implementation

{$R *.dfm}
uses unit2, unit60,frameOptions,baseFrame,PlannerItemDialog1, unit163, Unit_ToolsDataModule, unit3, MyHorzDaysView, unit90;

procedure TForm159.ReplaceHorzDaysWithTight;
var
  OldV   : TPlannerHorzDayslineViewEh;
  NewV   : THorzDayslineTight;
  OldName: string;
begin
  // Уже заменён — выходим
  if PlannerHorzDayslineViewEh1 is THorzDayslineTight then Exit;

  OldV := PlannerHorzDayslineViewEh1;
  OldName := OldV.Name;

  // Создаём наш наследник рядом со старым
  NewV := THorzDayslineTight.Create(Self);
  NewV.Parent  := OldV.Parent;         // PlannerControlEh1
  NewV.Align   := OldV.Align;
  NewV.Visible := OldV.Visible;

  // Переносим ключевые настройки
  NewV.TimeRange                 := OldV.TimeRange;
  NewV.StartDate                 := OldV.StartDate;
  NewV.DataBarsArea.ColWidth     := OldV.DataBarsArea.ColWidth;
  NewV.MinDataRowHeight          := OldV.MinDataRowHeight;
  NewV.ResourceCaptionArea.Width := OldV.ResourceCaptionArea.Width;
  NewV.ShowDateRow               := OldV.ShowDateRow;

  // Наши меньшие отступы для плиток
  NewV.TopPad    := 0;
  NewV.BottomPad := 0;

  // ✨ ВАЖНО: перепривязываем ПОЛЕ формы на новый объект и удаляем старый
  PlannerHorzDayslineViewEh1 := NewV;
  OldV.Free;
  NewV.Name := OldName;

  // Активируем новый вид и пересчитаем лэйаут
  PlannerControlEh1.ActivePlannerView := PlannerHorzDayslineViewEh1;
  HorzDays_ForceRelayout;
end;

procedure TForm159.PromoteWeekViewToMonthRange;
var
  OldW : TPlannerWeekViewEh;
  NewW : TWeekViewMonthRange;
  OldName: string;
begin
  if PlannerWeekViewEh1 is TWeekViewMonthRange then Exit;
  OldW := PlannerWeekViewEh1;
  OldName := OldW.Name;
  // создаём новый наследник и переносим важные настройки
  NewW := TWeekViewMonthRange.Create(Self);
  NewW.Parent := OldW.Parent;          // PlannerControlEh1
  NewW.Align  := OldW.Align;
  NewW.Visible := OldW.Visible;
  NewW.BarTimeInterval            := OldW.BarTimeInterval;
  NewW.DataBarsArea.RowHeight     := OldW.DataBarsArea.RowHeight;
  NewW.MinDayColWidth             := OldW.MinDayColWidth;
  NewW.HoursColArea.Width         := OldW.HoursColArea.Width;
  // перепривязываем ПОЛЕ формы на новый объект
  PlannerWeekViewEh1 := NewW;
  // удаляем старый компонент и возвращаем его имя новому
  OldW.Free;
  NewW.Name := OldName;
  // делаем активным (если хочешь сразу показать WeekView)
  // PlannerControlEh1.ActivePlannerView := NewW;
end;

procedure TForm159.HorzDays_ForceRelayout;
var
  OldRange: Integer;
begin
  if PlannerControlEh1.ActivePlannerView <> PlannerHorzDayslineViewEh1 then
    Exit;
  // временно отключаем прорисовку, чтобы не мигало
  SendMessage(PlannerHorzDayslineViewEh1.Handle, WM_SETREDRAW, 0, 0);
  try
    // "пошевелим" диапазон, чтобы EhLib пересчитал layout
    OldRange := Ord(PlannerHorzDayslineViewEh1.TimeRange);

    // короткий toggle: если месяц — переключим на неделю и обратно
    if PlannerHorzDayslineViewEh1.TimeRange = dlrMonthEh then
      PlannerHorzDayslineViewEh1.TimeRange := dlrWeekEh
    else
      PlannerHorzDayslineViewEh1.TimeRange := dlrMonthEh;
    // вернём обратно исходный диапазон
    PlannerHorzDayslineViewEh1.TimeRange := TDayslineRangeEh(OldRange);
    // иногда помогает также «пошевелить» StartDate
    PlannerHorzDayslineViewEh1.StartDate := PlannerHorzDayslineViewEh1.StartDate;
  finally
    // включаем прорисовку обратно
    SendMessage(PlannerHorzDayslineViewEh1.Handle, WM_SETREDRAW, 1, 0);
    PlannerHorzDayslineViewEh1.Invalidate;
    PlannerControlEh1.Update; // чтобы сразу применилось
  end;
end;

procedure TForm159.BitBtn1Click(Sender: TObject);
begin
  if PlannerControlEh1.ActivePlannerView = PlannerMonthViewEh1 then
    zoomout
   else if PlannerControlEh1.ActivePlannerView = PlannerHorzDayslineViewEh1 then
    HorzDays_ZoomOut
  else
    WeekZoomOut;
end;

procedure TForm159.BitBtn2Click(Sender: TObject);
begin
  if PlannerControlEh1.ActivePlannerView = PlannerMonthViewEh1 then
    zoomin
  else if PlannerControlEh1.ActivePlannerView = PlannerHorzDayslineViewEh1 then
    HorzDays_ZoomIn
  else
    WeekZoomIn;
end;

procedure TForm159.BitBtn3Click(Sender: TObject);
begin
   if PlannerControlEh1.ActivePlannerView = PlannerHorzDayslineViewEh1 then
    HorzDays_VZoomIn;
end;

procedure TForm159.BitBtn4Click(Sender: TObject);
begin
  if PlannerControlEh1.ActivePlannerView = PlannerHorzDayslineViewEh1 then
    HorzDays_VZoomOut;
end;

procedure TForm159.BitBtn6Click(Sender: TObject);
begin
  ShowMonth_HorzDaysline;
end;

procedure TForm159.Button1Click(Sender: TObject);
begin
  PlannerControlEh1.ActivePlannerView := PlannerWeekViewEh1;
end;

procedure TForm159.Button2Click(Sender: TObject);
begin
  PlannerControlEh1.ActivePlannerView := PlannerMonthViewEh1;
  PlannerControlEh1.Height:=Panel1.Height;
end;

procedure TForm159.Button3Click(Sender: TObject);
begin
  PlannerControlEh1.ActivePlannerView := PlannerDayViewEh1;
end;

procedure TForm159.Button4Click(Sender: TObject);
begin
  PlannerItemDialog1.EditNewItem(plannercontroleh1);
end;

procedure TForm159.FillEmptyPlanner;
var i:integer;
begin
  PlannerDataSourceEh1.BeginUpdate;
  PlannerDataSourceEh1.Resources.Clear;
  for i := 0 to SelectedList.Count-1 do
  begin
    with PlannerDataSourceEh1.Resources.Add do
    begin
      Name := trim((selectedList[i]));
      ResourceID := datamodule60.Getidsotrsubyname(trim(selectedList[i]));
      case i mod 2 of
        0: Color :=$FFFFAA;// $ADFF2F;
        1: Color := $C0C0C0; //Orange
    //    2: Color := clNavy;
    //    3: Color := clPurple;
      end;
    end;
  end;
  DBGridEh1.Datasource.Dataset.EnableControls;
  PlannerDataSourceEh1.ClearItems;
  PlannerDataSourceEh1.EndUpdate;
end;

procedure TForm159.Button5Click(Sender: TObject);
var i,c:integer;
 PlanItem: TPlannerDataItemEh;
begin
  FillEmptyPlanner;
  FillPlanner;
end;

procedure TForm159.FillPlanner;
var i,c:integer;
 PlanItem: TPlannerDataItemEh;
begin
  PlannerDataSourceEh1.BeginUpdate;
  with datamodule60 do
  begin
    GetJobs(datetostr(now-60),datetostr(now+30),1);
    c:=ADOquery1.RecordCount;
    ADOquery1.first;
    for i:=1 to ADOquery1.RecordCount do
    begin                                                  //надо создать новую таблицу с событиями и полями как ниже
      PlanItem := PlannerDataSourceEh1.NewItem();
      PlanItem.ItemID := ADOquery1.FieldByName('Id_job').Value;
      PlanItem.StartTime := ADOquery1.FieldByName('j_startTime').Value;
      PlanItem.EndTime := ADOquery1.FieldByName('j_endTime').Value;
      PlanItem.Title := trim(ADOquery1.FieldByName('j_title').Value);
      PlanItem.Body := trim(ADOquery1.FieldByName('j_body').Value);
      PlanItem.AllDay := ADOquery1.FieldByName('j_allday').Value;
      PlanItem.ResourceID := ADOquery1.FieldByName('j_resource').Value;
      PlanItem.FillColor := (ADOquery1.FieldByName('j_color').Value);
      PlannerDataSourceEh1.FetchTimePlanItem(PlanItem);
      ADOquery1.Next;
    end;
    PlannerDataSourceEh1.EndUpdate;
  end;
end;

procedure TForm159.Button6Click(Sender: TObject);
begin
PlannerControlEh1.ActivePlannerView := PlannerHorzHourslineViewEh1;
  PlannerHorzHourslineViewEh1.TimeRange := hlrWeekEh;
end;

procedure TForm159.Button7Click(Sender: TObject);
begin
  PlannerControlEh1.ActivePlannerView := PlannerHorzDayslineViewEh1;
  PlannerControlEh1.Height:=2000;
  PlannerHorzDayslineViewEh1.TimeRange := dlrWeekEh;
end;

procedure TForm159.Button8Click(Sender: TObject);
var bm:string;
begin
   DBGridEh1.Datasource.Dataset.DisableControls;
   DBGridEh1.DataSource.DataSet.First;
   SelectedList.Free;
   SelectedList:=TStringList.Create;
   while not DBGridEh1.DataSource.DataSet.eof do
    begin
      DBGridEh1.SelectedRows.CurrentRowSelected := true;
      bm:=TDataSet(DBGridEh1.DataSource.DataSet).Fields[1].AsString;
      SelectedList.Add(bm);
      DBGridEh1.Datasource.Dataset.Next;
    end;
    DBGridEh1.Refresh;
    DBGridEh1.Datasource.Dataset.EnableControls;
end;

procedure TForm159.Button9Click(Sender: TObject);
begin
  DBGridEh1.DataSource.DataSet.First;
    DBGridEh1.Datasource.Dataset.DisableControls;
    SelectedList.Free;
    while not DBGridEh1.DataSource.DataSet.eof do
    begin
      DBGridEh1.SelectedRows.CurrentRowSelected := false;
      DBGridEh1.Datasource.Dataset.Next;
    end;
    DBGridEh1.Refresh;
    DBGridEh1.Datasource.Dataset.EnableControls;
    SelectedList:=TStringList.Create;
end;

procedure TForm159.ComboBox1Change(Sender: TObject);
begin
  filterjobs;
end;

procedure TForm159.ComboBox2Change(Sender: TObject);
begin
  filterjobs;
end;

procedure TForm159.ComboBox39Change(Sender: TObject);
begin
  filterOrderToSend;
end;

procedure TForm159.ComboBox3Change(Sender: TObject);
var nm:string;
i,idres:integer;
dt,dtold:Tdate;
PlanItem: TPlannerDataItemEh;
begin
  nm:=trim(combobox3.Text);
  if nm<>'' then
  begin
    dtold:=now-500;
    for i:=0 to PlannerDataSourceEh1.Count-1 do
    begin
      if nm=trim(PlannerDataSourceEh1.Items[i].Title) then
      begin
        // showmessage(trim(datamodule60.GetNameSotrSUByID(PlannerDataSourceEh1.Items[i].ResourceID)));
        dt:=PlannerDataSourceEh1.Items[i].StartTime;
        if dt>dtold then
        begin
          dtold:=dt;
          idres:=PlannerDataSourceEh1.Items[i].ResourceID;
          PlanItem:=PlannerDataSourceEh1.Items[i];
        end;
      end;
    end;
    PlannerControlEh1.CurrentTime:= dtold;
    PlannerControlEh1.ActivePlannerView.SelectedPlanItem:=PlanItem;   //выделяет Item, но не переходит к нему
    showmessage(datetostr(PlannerControlEh1.ActivePlannerView.SelectedPlanItem.StartTime)+' '
    +trim(datamodule60.GetNameSotrSUByID(idres)));
  //  PlannerControlEh1.TimeSpanParams.BorderColor:=clred;
    PlannerControlEh1.SetFocus;
  end;
end;

procedure TForm159.ComboBox4Change(Sender: TObject);
begin
  filterlog;
end;

procedure TForm159.ComboBox5Change(Sender: TObject);
begin
  filterlog;
end;

procedure TForm159.DBGridEh1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var cnt,ids,i,z:integer;
pnt: TPoint;
  bm_id,s:string;
  Label lab;
begin
  case Button of
    mbLeft:
    begin
      DBGridEh1.Options:=DBGridEh1.Options+[dgMultiselect];
      DBGridEh1.Datasource.Dataset.DisableControls;
      bm_id:=trim(TDataSet(DBGridEh1.DataSource.DataSet).Fields[1].AsString);
      if bm_id<>'' then
      begin
        DBGridEh1.SelectedRows.CurrentRowSelected:= true;
        z:=0;
        for i:=0 to SelectedList.Count-1 do
          if trim(SelectedList[i]) = bm_id then
          begin
            DBGridEh1.SelectedRows.CurrentRowSelected:=false;
            SelectedList.Delete(i);
            goto lab;
          end;
          SelectedList.Add(bm_id);
          lab:
          DBGridEh1.Refresh;
      end;
      DBGridEh1.Datasource.Dataset.EnableControls;
      SelectedList.Sorted:=true;
    end;
  end;
end;

procedure TForm159.DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if datamodule60.ADOQuery37.RecordCount<>0 then
  begin
   DBGrideh2.Canvas.Brush.Color:= datamodule60.ADOQuery37.FieldByName('j_color').value;
   DBGrideh2.Canvas.Font.Color:= clBlack;
   DBGrideh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TForm159.DBGridEh2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var pnt:Tpoint;
begin
    clkNum37:=datamodule60.datasource37.DataSet.RecNo;
    case Button of
      mbRight:
      begin
        if GetCursorPos(pnt) then
        begin
          with datamodule60 do
          begin
            if adoquery37.RecordCount<>0 then
            begin
              recins:=adoquery37.Fields.Fields[0].Value;
              popupmenu2.Popup(pnt.X, pnt.Y);
            end;
          end;
        end;
      end;
  end;
end;

procedure TForm159.DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if datamodule60.ADOQuery38.RecordCount<>0 then
  begin
    if datamodule60.ADOQuery38.Fields.Fields[15].value=1 then
    begin
      DBGridEh3.Canvas.Brush.Color:= $001E90FF;  //all
      DBGridEh3.Canvas.Font.Color:= clBlack;
      DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else if datamodule60.ADOQuery38.Fields.Fields[15].value=2 then
    begin
      DBGridEh3.Canvas.Brush.Color:=clyellow;// $00E0FFFF;  //not all
      DBGridEh3.Canvas.Font.Color:= clBlack;
      DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else if datamodule60.ADOQuery38.Fields.Fields[15].value=3 then
    begin
      DBGridEh3.Canvas.Brush.Color:= $0000FF7F;  //done
      DBGridEh3.Canvas.Font.Color:= clBlack;
      DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else if datamodule60.ADOQuery38.Fields.Fields[15].value=0 then     //none
    begin
      DBGridEh3.Canvas.Brush.Color:= clWhite;
      DBGridEh3.Canvas.Font.Color:= clBlack;
      DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  end;
end;

procedure TForm159.DBGridEh3MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var cnt,ids,id:integer;
pnt,pt: TPoint;
begin
  clkNum24:=datamodule60.datasource38.DataSet.RecNo;
  case Button of
      mbRight:
      begin
        if GetCursorPos(pnt) then
        begin
          if datamodule60.ADOQuery38.RecordCount<>0 then
          begin
            idDetPO:=datamodule60.ADOQuery38.Fields.Fields[8].value;
            idPO:=datamodule60.ADOQuery38.Fields.Fields[9].value;
            cntPO:=datamodule60.ADOQuery38.Fields.Fields[2].value;
            clkPO:=1;
            popupmenu3.Popup(pnt.X, pnt.Y);
          end;
        end;
      end;
  end;
end;

procedure TForm159.FormMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
if (PlannerControlEh1.ActivePlannerView = PlannerHorzDayslineViewEh1) and (ssCtrl in Shift) then
  begin
    HorzDays_VZoomOut;
    Handled := True;
  end;
end;

procedure TForm159.FormMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  if (PlannerControlEh1.ActivePlannerView = PlannerHorzDayslineViewEh1) and (ssCtrl in Shift) then
  begin
    HorzDays_VZoomIn;
    Handled := True;
  end;
end;

procedure TForm159.FormResize(Sender: TObject);
begin
  PlannerControlEh1.Height:=form159.Height-110;
end;

procedure TForm159.FormShow(Sender: TObject);
var i,c:integer;
PlanItem: TPlannerDataItemEh;
 NewWeek: TWeekViewMonthRange;
begin
  PromoteWeekViewToMonthRange;
  ReplaceHorzDaysWithTight;
  pagecontrol1.ActivePageIndex:=0;
  ToolsDataModule.UseSpecDays:=false;
  SelectedList:=TStringList.Create;
  with datamodule60 do
  begin
    GetAllSotrudnikSUForSchedule;
    loadgridSotrSU;
  end;
  PlannerCalendarPickerEh1.Date:=now;
  PlannerControlEh1.ActivePlannerView := PlannerMonthViewEh1;
  PlannerMonthViewEh1.MinDayColWidth:=130;
  with datamodule60 do
  begin
    ADOquery36.First;
    PlannerDataSourceEh1.BeginUpdate;
    PlannerDataSourceEh1.Resources.Clear;
    for i:=1 to ADOquery36.RecordCount do
    begin
      SelectedList.Add(ADOquery36.Fields.Fields[1].asstring) ;
      dbgrideh1.SelectedRows.CurrentRowSelected :=  True;
      with PlannerDataSourceEh1.Resources.Add do
      begin
        Name:=trim(ADOquery36.Fields.Fields[1].Value);     //фамилия сотрудника
        ResourceID :=(ADOquery36.Fields.Fields[0].Value);   //id сотрудника SU
        case i mod 2 of                                    //цвета вкладок с фамилиями сотрудников
          0: Color :=$FFFFAA;// $ADFF2F;
          1: Color := $C0C0C0; //Orange
      //    2: Color := clNavy;
      //    3: Color := clPurple;
        end;
      end;                                            //отображение события;
      ADOquery36.Next;
    end;
    ADOquery36.First;
    DBGridEh1.Datasource.Dataset.EnableControls;
    PlannerDataSourceEh1.ClearItems;
    PlannerDataSourceEh1.EndUpdate;
    fillPlanner;
    PlannerControlEh1.CurrentTime:= Today;

    GetAllDetailsFromJobs;
    combobox3.Items.Clear;
    combobox3.Text:='';
    ADOquery1.First;
    for i:=1 to ADOquery1.RecordCount do
    begin
      combobox3.Items.Add(trim(ADOquery1.Fields.Fields[0].asstring)) ;
      ADOquery1.Next;
    end;
    combobox3.Sorted:=true;
  end;
  ShowMonth_HorzDaysline;
end;

procedure TForm159.loadgridSotrSU;
var w:integer;
begin
  dbgrideh1.DataSource:=datamodule60.Datasource36;
  w:=dbgrideh1.Width-60;
  dbgrideh1.Columns[0].Visible:=false;
  dbgrideh1.Columns[1].Title.caption:='Сотрудник';
  dbgrideh1.Columns[1].Width:=trunc(1.0*w);
  dbgrideh1.Columns[2].Visible:=false;
  //dbgrideh1.Columns[2].Title.caption:='Статус';
  //dbgrideh1.Columns[2].Width:=trunc(0.3*w);

end;

procedure TForm159.MenuItem1Click(Sender: TObject);
var  SelectedPlanItem: TPlannerDataItemEh;
  i,j,ad:integer;
  label l;
begin
  for i :=0 to PlannerControlEh1.PlannerViewCount-1 do
  for j :=0 to PlannerControlEh1.PlannerView[i].SpanItemsCount-1 do
  begin
    if PlannerControlEh1.PlannerView[i].SpanItems[j].PlanItem.ItemID=recins then
    begin
      SelectedPlanItem := PlannerControlEh1.PlannerView[i].SpanItems[j].PlanItem;
      PI_id:=recins;
      PlannerItemDialog1.EditPlanItem(plannercontroleh1,SelectedPlanItem);
      if SelectedPlanItem.AllDay=true then  ad:=1 else ad:=0;

      datamodule60.UpdateJob(SelectedPlanItem.ItemID,SelectedPlanItem.Title,SelectedPlanItem.Body,datetostr(SelectedPlanItem.StartTime)+' '+
      timetostr(SelectedPlanItem.StartTime), datetostr(SelectedPlanItem.EndTime)+' '+timetostr(SelectedPlanItem.EndTime),ad,SelectedPlanItem.ResourceID,SelectedPlanItem.FillColor);
      datamodule60.UpdateCountJob(recins,plannerItemDialog1.cntDet);
      filterjobs;
      goto l;
    end;
  end;
  l:
end;

procedure TForm159.MenuItem2Click(Sender: TObject);
var  SelectedPlanItem: TPlannerDataItemEh;
id,oldcount,newcount:integer;
k:string;
begin
    k:=inttostr(datamodule60.getCountByIDJob(recins));
    oldcount:=strtoint(k);
   if InputQuery('Изменение количества деталей', 'Введите новое количество', k) then
    begin
      if trim(k)<>'' then
      begin
        datamodule60.UpdateCountJob(recins,strtoint(k));
        filterjobs;
        newcount:=strtoint(k);
        if oldcount<>newcount then
          datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование количества',trim(datamodule60.adoquery37.fields.fields[2].value),inttostr(oldcount),inttostr(newcount),recins);
      end;
    end;
end;

procedure TForm159.MenuItem3Click(Sender: TObject);
var  oldColor,newColor:integer;
begin
  oldColor:=datamodule60.getColorByIDJob(recins);
  newcolor:=clSkyBlue;
  datamodule60.UpdateColorInSchedule(recins,clSkyBlue);
  filterjobs;
  if oldcolor<>newcolor then
    begin
      if oldcolor=15793151 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',trim(datamodule60.ADOQuery37.Fields.Fields[2].value),'Завершено','Не в работе',recins);
      if oldcolor=65535 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',trim(datamodule60.ADOQuery37.Fields.Fields[2].value),'В работе','Не в работе',recins);
    end;
end;

procedure TForm159.MenuItem4Click(Sender: TObject);
var  oldColor,newColor:integer;
begin
  oldColor:=datamodule60.getColorByIDJob(recins);
  newcolor:=clyellow;
  datamodule60.UpdateColorInSchedule(recins,clyellow);
  filterjobs;
  if oldcolor<>newcolor then
    begin
      if oldcolor=15793151 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',trim(datamodule60.ADOQuery37.Fields.Fields[2].value),'Завершено','В работе',recins);
      if oldcolor=12639424 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',trim(datamodule60.ADOQuery37.Fields.Fields[2].value),'Не в работе','В работе',recins);
    end;
end;

procedure TForm159.MenuItem5Click(Sender: TObject);
var  oldColor,newColor:integer;
begin
  oldColor:=datamodule60.getColorByIDJob(recins);
  newcolor:=clmoneygreen;
  datamodule60.UpdateColorInSchedule(recins,clmoneygreen);
  filterjobs;
  if oldcolor<>newcolor then
    begin
      if oldcolor=65535 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',trim(datamodule60.ADOQuery37.Fields.Fields[2].value),'В работе','Завершено',recins);
      if oldcolor=12639424 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',trim(datamodule60.ADOQuery37.Fields.Fields[2].value),'Не в работе','Завершено',recins);
    end;
end;

procedure TForm159.MenuItem6Click(Sender: TObject);
var planItem:TPlannerDataItemEh;
cnt,id:integer;
begin
  cnt:=datamodule60.getCountByIDJob(recins);
  datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Удаление детали',trim(datamodule60.ADOQuery37.Fields.Fields[2].value),inttostr(cnt),inttostr(cnt),recins);
  datamodule60.DeleteJob(recins);
  filterjobs;
end;

procedure TForm159.N10Click(Sender: TObject);
begin
  datamodule60.UpdateLabelPO(idpo,3);
  filterOrderToSend;
end;

procedure TForm159.N1Click(Sender: TObject);
var cnt,id:integer;
  SelectedPlanItem: TPlannerDataItemEh;
begin
  SelectedPlanItem := PlannerControlEh1.ActivePlannerView.SelectedPlanItem;
  if SelectedPlanItem <> nil then
  begin
    PI_id:=SelectedPlanItem.ItemID;
    if PlannerControlEh1.CheckPlannerItemChangeOperation(PlannerControlEh1.ActivePlannerView,
         SelectedPlanItem, paoDeletePlanItemEh) and
       PlannerControlEh1.ActivePlannerView.DeletePrompt
    then
    begin
      id:=SelectedPlanItem.ItemID;
      cnt:=datamodule60.getCountByIDJob(id);
 //     datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Удаление детали',SelectedPlanItem.Title,inttostr(cnt),inttostr(cnt),id);
      PlannerControlEh1.PlannerDataSource.DeleteItem(SelectedPlanItem);
      datamodule60.DeleteJob(id);
    end;
  end;
end;

procedure TForm159.N2Click(Sender: TObject);
var  SelectedPlanItem: TPlannerDataItemEh;
id:integer;
oldColor,newColor:integer;
begin
  SelectedPlanItem := PlannerControlEh1.ActivePlannerView.SelectedPlanItem;
  if SelectedPlanItem <> nil then
  begin
    oldcolor:=SelectedPlanItem.FillColor;
   SelectedPlanItem.FillColor:=clmoneygreen;
   newcolor:=clmoneygreen;
   id:=selectedPlanItem.ItemID;
   datamodule60.UpdateColorInSchedule(id,clMoneyGreen);
   if oldcolor<>newcolor then
    begin
      if oldcolor=15793151 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',SelectedPlanItem.Title,'Не в работе','Завершено',id);
      if oldcolor=65535 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',SelectedPlanItem.Title,'В работе','Завершено',id);
    end;
  end;
end;

procedure TForm159.N3Click(Sender: TObject);
var  SelectedPlanItem: TPlannerDataItemEh;
id:integer;
oldColor,newColor:integer;
begin
  SelectedPlanItem := PlannerControlEh1.ActivePlannerView.SelectedPlanItem;
  if SelectedPlanItem <> nil then
  begin
    oldcolor:=SelectedPlanItem.FillColor;
   SelectedPlanItem.FillColor:=clYellow;
   newcolor:=clYellow;
   id:=selectedPlanItem.ItemID;
   datamodule60.UpdateColorInSchedule(id,clYellow);
   if oldcolor<>newcolor then
    begin
      if oldcolor=15793151 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',SelectedPlanItem.Title,'Не в работе','В работе',id);
      if oldcolor=12639424 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',SelectedPlanItem.Title,'Завершено','В работе',id);
    end;
  end;
end;

procedure TForm159.N4Click(Sender: TObject);
var  SelectedPlanItem: TPlannerDataItemEh;
oldColor,newColor:integer;
id:integer;
begin
  SelectedPlanItem := PlannerControlEh1.ActivePlannerView.SelectedPlanItem;
  if SelectedPlanItem <> nil then
  begin
    oldcolor:=SelectedPlanItem.FillColor;
    SelectedPlanItem.FillColor:=clCream;
    newcolor:=clCream;
    id:=selectedPlanItem.ItemID;
    datamodule60.UpdateColorInSchedule(id,clCream);
    if oldcolor<>newcolor then
    begin
      if oldcolor=65535 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',SelectedPlanItem.Title,'В работе','Не в работе',id);
      if oldcolor=12639424 then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование статуса',SelectedPlanItem.Title,'Завершено','Не в работе',id);
    end;
  end;
end;

procedure TForm159.N5Click(Sender: TObject);
var  SelectedPlanItem: TPlannerDataItemEh;
begin
  SelectedPlanItem := PlannerControlEh1.ActivePlannerView.SelectedPlanItem;
  PI_id:=SelectedPlanItem.ItemID;
  PlannerItemDialog1.EditPlanItem(plannercontroleh1,SelectedPlanItem);
end;

procedure TForm159.N6Click(Sender: TObject);
var  SelectedPlanItem: TPlannerDataItemEh;
id:integer;
oldcount,newcount:integer;
k:string;
begin
  SelectedPlanItem := PlannerControlEh1.ActivePlannerView.SelectedPlanItem;
  if SelectedPlanItem <> nil then
  begin
    k:=inttostr(datamodule60.getCountByIDJob(selectedPlanItem.ItemID));
    oldcount:=strtoint(k);
   id:=selectedPlanItem.ItemID;
   if InputQuery('Изменение количества деталей', 'Введите новое количество', k) then
    begin
      if trim(k)<>'' then
      begin
        newcount:=strtoint(k);
        datamodule60.UpdateCountJob(id,strtoint(k));
        if oldcount<>newcount then
          datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование количества',selectedPlanItem.Title,inttostr(oldcount),inttostr(newcount),id);
      end;
    end;
  end;
end;

procedure TForm159.N7Click(Sender: TObject);
begin
  PlannerItemDialog1.EditNewItem(plannercontroleh1);
  filterOrderToSend;
  if (datamodule60.ADOQuery38.FieldByName('countR').value=0) or (datamodule60.ADOQuery38.FieldByName('countR').value=null) then
    datamodule60.UpdateLabelPO(idpo,0)  //none
  else if datamodule60.ADOQuery38.FieldByName('count_intoorder').value>datamodule60.ADOQuery38.FieldByName('countR').value then
    datamodule60.UpdateLabelPO(idpo,2)  //not all
  else  if datamodule60.ADOQuery38.FieldByName('count_intoorder').value<=datamodule60.ADOQuery38.FieldByName('countR').value then
    datamodule60.UpdateLabelPO(idpo,1);  //all
  FillEmptyPlanner;
  FillPlanner;
  filterOrderToSend;
end;

procedure TForm159.N8Click(Sender: TObject);
begin
  datamodule60.UpdateLabelPO(idpo,0);
  filterOrderToSend;
end;

procedure TForm159.N9Click(Sender: TObject);
var  SelectedPlanItem: TPlannerDataItemEh;
id:integer;
oldcount,newcount,ad:integer;
k:string;
begin
  SelectedPlanItem := PlannerControlEh1.ActivePlannerView.SelectedPlanItem;
  if SelectedPlanItem <> nil then
  begin
    oldcount:=(datamodule60.getCountByIDJob(selectedPlanItem.ItemID));
    id:=selectedPlanItem.ItemID;
    if selectedPlanItem.AllDay=true then
        ad:=1
      else
        ad:=0;
    datamodule60.AddNewRecForSchedule(selectedPlanItem.Title,selectedPlanItem.Body,datetostr(selectedPlanItem.StartTime)+' '+timetostr(selectedPlanItem.StartTime),datetostr(selectedPlanItem.EndTime)+' '+timetostr(selectedPlanItem.EndTime),ad,
      selectedPlanItem.ResourceID,selectedPlanItem.FillColor,oldcount);
    datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Копирование задания',selectedPlanItem.Title,inttostr(oldcount),inttostr(selectedPlanItem.ResourceID),id);
    FillEmptyPlanner;
    FillPlanner;
  end;
end;


procedure TForm159.PlannerControlEh1DrawSpanItem(PlannerControl: TPlannerControlEh; PlannerView: TCustomPlannerViewEh;
  SpanItem: TTimeSpanDisplayItemEh; Rect: TRect; DrawArgs: TDrawSpanItemArgsEh;var Processed: Boolean);
const
  PAD_L   = 1;   // левый внутренний отступ
  PAD_T   = 0;   // верхний внутренний отступ
  PAD_R   = 1;   // правый внутренний отступ
  PAD_B   = 1;   // нижний внутренний отступ
  TILE_H  = 15;  // ЖЁСТКАЯ высота плитки в пикселях (максимум и по сути всегда)
  FONT_SZ = 7;   // размер шрифта на плитке
var
  R: TRect;
  C: TCanvas;
  H: Integer;
begin
  if PlannerView <> PlannerHorzDayslineViewEh1 then
    Exit;

  // Берём тот прямоугольник, который EhLib уже посчитал для этой плитки,
  // и рисуем ВНУТРИ него, не меняя вертикального положения.
  R := Rect;

  // Внутренние отступы
  InflateRect(R, -PAD_L, -PAD_T);       // слева/сверху
  Dec(R.Right, PAD_R);                  // справа
  Dec(R.Bottom, PAD_B);                 // снизу

  // Ставим фиксированную высоту плитки = 10 px от текущего R.Top
  H := TILE_H;
  if R.Top + H > Rect.Bottom - PAD_B then
    H := Max(1, (Rect.Bottom - PAD_B) - R.Top);  // чтобы не вылезти из слота
  R.Bottom := R.Top + H;

  // Рисуем
  C := PlannerView.Canvas;

  // фон
  C.Brush.Style := bsSolid;
  C.Brush.Color := SpanItem.PlanItem.FillColor;
  C.Pen.Color   := clBtnShadow;
  C.Rectangle(R);

  // текст
  C.Brush.Style := bsClear;
  C.Font.Handle := 0;
  C.Font.Assign(PlannerControlEh1.Font);
  C.Font.Size := FONT_SZ;

  DrawText(C.Handle,
           PChar(SpanItem.PlanItem.Title),
           Length(SpanItem.PlanItem.Title),
           R,
           DT_LEFT or DT_VCENTER or DT_SINGLELINE or DT_END_ELLIPSIS);

  // рамка выделения (если нужно)
  if PlannerView.SelectedPlanItem = SpanItem.PlanItem then
  begin
    C.Pen.Color := clHighlight;
    C.FrameRect(R);
  end;

  Processed := True; // полностью берём отрисовку на себя
end;


procedure TForm159.PlannerControlEh1PlannerItemInteractiveChanged(PlannerControl: TPlannerControlEh; PlannerView: TCustomPlannerViewEh; Item, OldValuesItem: TPlannerDataItemEh);
var oldstarttime,newstarttime:string;
oldendtime,newendtime:string;
oldresID,newresID:integer;
begin
  PI_id:=Item.ItemID;
  oldstarttime:=datetimetostr(OldValuesItem.StartTime);
  oldendtime:=datetimetostr(OldValuesItem.endTime);
  oldresID:=(OldValuesItem.ResourceID);
  newstarttime:=datetimetostr(Item.StartTime);
  newendtime:=datetimetostr(Item.endTime);
  newresID:=(Item.ResourceID);
{  if oldstarttime<>newstarttime then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование времени начала',Item.Title,(oldstarttime),(newstarttime),PI_id);
      if oldendtime<>newendtime then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование времени окончания',Item.Title,(oldendtime),(newendtime),PI_id);
      if oldresID<>newresID then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование сотрудника',Item.Title,trim(datamodule60.GetNameSotrSUByID(oldresId)),trim(datamodule60.GetNameSotrSUByID(newresId)),PI_id);
  }
 // showmessage(inttostr(pi_id));
//  showmessage(inttostr(pI_id));
end;

procedure TForm159.PlannerControlEh1ShowPlanItemDialog(PlannerControl: TPlannerControlEh; PlannerView: TCustomPlannerViewEh;Item: TPlannerDataItemEh; ChangeMode: TPlanItemChangeModeEh);
var  SelectedPlanItem: TPlannerDataItemEh;
begin
  SelectedPlanItem := PlannerControlEh1.ActivePlannerView.SelectedPlanItem;
  PI_id:=SelectedPlanItem.ItemID;
  PlannerItemDialog1.EditPlanItem(plannercontroleh1,SelectedPlanItem);
end;


procedure TForm159.PlannerControlEh1SpanItemHintShow(PlannerControl: TPlannerControlEh; PlannerView: TCustomPlannerViewEh;CursorPos: TPoint; SpanRect: TRect; InSpanCursorPos: TPoint;
  SpanItem: TTimeSpanDisplayItemEh; Params: TPlannerViewSpanHintParamsEh; var Processed: Boolean);
begin
  // если кастомная отрисовка не используется — оставь дефолт
  if PlannerView <> PlannerHorzDayslineViewEh1 then Exit;

  PlannerControl.DefaultFillSpanItemHintShowParams(PlannerView,CursorPos, SpanRect, InSpanCursorPos, SpanItem, Params);
  Params.HintStr :=datetostr(SpanItem.PlanItem.StartTime)+' ('+timetostr(SpanItem.PlanItem.StartTime) + ') - '+
        datetostr(SpanItem.PlanItem.EndTime)+' ('+timetostr(SpanItem.PlanItem.EndTime)+')' + sLineBreak
  + trim(SpanItem.PlanItem.Title) + sLineBreak + inttostr(datamodule60.getCountByIDJob(SpanItem.PlanItem.ItemID))+' шт.';
  Params.HintFont.Style := Params.HintFont.Style - [fsBold];
  Params.HintFont.Color:=clBlue;
  Processed := True;
end;

procedure TForm159.PlannerDataSourceEh1ApplyUpdateToDataStorage(PlannerDataSource: TPlannerDataSourceEh; PlanItem: TPlannerDataItemEh; UpdateStatus: TUpdateStatus);
var ad,cnt,cntPlanner,cntParts,ostParts,cntDays,cntCountFromPlanToSU:integer;
oldbody,newbody:string;
oldstarttime,newstarttime:string;
oldendtime,newendtime:string;
oldresID,newresID,i,d:integer;
Label A;
begin
  if UpdateStatus = usModified then
  begin
      if planItem.AllDay=true then
        ad:=1
      else
        ad:=0;
      oldstarttime:=datamodule60.getStartTimeByIDJob(PlanItem.ItemID);
      oldendtime:=datamodule60.getEndTimeByIDJob(PlanItem.ItemID);
      oldresID:=datamodule60.getIDResByIDJob(PlanItem.ItemID);
      datamodule60.UpdateJob(PlanItem.ItemID,PlanItem.Title,PlanItem.Body,datetostr(PlanItem.StartTime)+' '+timetostr(PlanItem.StartTime),datetostr(PlanItem.EndTime)+' '+timetostr(PlanItem.EndTime),ad,
      PlanItem.ResourceID,PlanItem.FillColor);
      newstarttime:=datamodule60.getStartTimeByIDJob(PlanItem.ItemID);
      newendtime:=datamodule60.getEndTimeByIDJob(PlanItem.ItemID);
      newresID:=PlanItem.ResourceID;
      if oldstarttime<>newstarttime then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование времени начала',PlanItem.Title,(oldstarttime),(newstarttime),PlanItem.ItemID);
      if oldendtime<>newendtime then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование времени окончания',PlanItem.Title,(oldendtime),(newendtime),PlanItem.ItemID);
      if oldresID<>newresID then
        datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Редактирование сотрудника',PlanItem.Title,trim(datamodule60.GetNameSotrSUByID(oldresId)),trim(datamodule60.GetNameSotrSUByID(newresId)),PlanItem.ItemID);
   end
  else if UpdateStatus = usInserted then
  begin
    if planItem.AllDay=true then
        ad:=1
      else
        ad:=0;
    d:=0;
    cntPlanner:=(PlannerItemDialog1.cntdet);
    if cntPlanner<PlannerItemDialog1.countDays then
      PlannerItemDialog1.countDays:=1;
    if PlannerItemDialog1.countDays<>1 then
    begin
      cntParts:=cntPlanner div PlannerItemDialog1.countDays; //целая часть результата деления
      ostParts:=cntPlanner mod PlannerItemDialog1.countDays; //остаток от результата деления
    end
    else
    begin
      cntParts:=cntPlanner;
      ostParts:=0;
    end;
    cntPlanner:=cntParts;
    cntDays:=PlannerItemDialog1.countDays;
    if ostParts<>0 then
      cntDays:=cntDays+1;
    for i:=1 to cntDays do
    begin
      if (i=cntDays) and (i<>1) and (ostParts<>0) then
        cntPlanner:=ostParts;
      A:
      if (dayOfTheWeek(PlanItem.StartTime)=6) or (dayOfTheWeek(PlanItem.StartTime)=7) then
      begin
        PlanItem.StartTime:=IncDay(PlanItem.StartTime, 1);
        PlanItem.EndTime := PlanItem.EndTime + (8/24);
        goto A;
      end;
      datamodule60.AddNewRecForSchedule(PlanItem.Title,PlanItem.Body,datetostr(PlanItem.StartTime)+' '+timetostr(PlanItem.StartTime),datetostr(PlanItem.EndTime)+' '+timetostr(PlanItem.EndTime),ad,
        PlanItem.ResourceID,PlanItem.FillColor,cntPlanner);
      PlanItem.ItemID:=datamodule60.getLastIDJobs;
      if datamodule60.checkCountFromPlanToSU(idPO)<>0 then
      begin
        cntCountFromPlanToSU:=datamodule60.checkCountFromPlanToSU(idPO);
        datamodule60.updateCountFromPlanToSU(idPO,cntPlanner+cntCountFromPlanToSU);
      end
      else
        datamodule60.AddCountFromPlanToSU(idPO,cntPlanner);
      cnt:=datamodule60.getCountByIDJob(PlanItem.ItemID);
      datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Добавление детали',PlanItem.Title,inttostr(cnt),inttostr(cnt),PlanItem.ItemID);
      PlanItem.StartTime:=IncDay(PlanItem.StartTime, 1);
      PlanItem.EndTime := PlanItem.EndTime + (8/24);
    end;
    
  end
  else if UpdateStatus = usDeleted then
  begin
    cnt:=datamodule60.getCountByIDJob(PlanItem.ItemID);
    datamodule60.AddNewRecForLogSUPlan(datetostr(now)+' '+timetostr(now),'Удаление детали',PlanItem.Title,inttostr(cnt),inttostr(cnt),PlanItem.ItemID);
    datamodule60.DeleteJob(PlanItem.ItemID);
  end;

end;

procedure TForm159.RadioGroup1Click(Sender: TObject);
begin
  case radiogroup1.ItemIndex of
  0: statusJob:=0;
  1: statusJob:=15793151;
  2: statusJob:=65535;
  3: statusJob:=12639424;
  end;
  filterjobs;
end;

procedure TForm159.ReadState(Reader: TReader);
begin
  inherited ReadState(Reader);
end;

procedure TForm159.RzDateTimeEdit10Change(Sender: TObject);
begin
  filterOrderToSend;
end;

procedure TForm159.RzDateTimeEdit1Change(Sender: TObject);
begin
filterjobs;
end;

procedure TForm159.RzDateTimeEdit2Change(Sender: TObject);
begin
filterjobs;
end;

procedure TForm159.RzDateTimeEdit3Change(Sender: TObject);
begin
FILTERlog;
end;

procedure TForm159.RzDateTimeEdit4Change(Sender: TObject);
begin
  filterlog;
end;

procedure TForm159.RzDateTimeEdit9Change(Sender: TObject);
begin
  filterOrderToSend;
end;

procedure TForm159.sBitBtn67Click(Sender: TObject);
var i,kol:integer;
    n1,n2,n3,n4:real;
    saveDialog : TSaveDialog;    // Переменная диалога сохранения
  begin
    with datamodule60 do
    begin
      kol:=adoquery37.RecordCount;
      SetLength(mas_rec,kol,8);
      adoquery37.DisableControls();
      adoquery37.First;
      for i:=1 to kol do           // id_job,name_zavod, j_title, j_count, j_body, j_startTime,j_endTime, name_sotr_su , j_color
      begin
        mas_rec[i-1,0]:=trim(adoquery37.FieldByName('name_zavod').Value);
        mas_rec[i-1,1]:=trim(adoquery37.FieldByName('j_title').Value);
        mas_rec[i-1,2]:=inttostr(adoquery37.FieldByName('j_count').Value);
        mas_rec[i-1,3]:=trim(adoquery37.FieldByName('j_body').Value);
        mas_rec[i-1,4]:=trim(adoquery37.FieldByName('j_startTime').asstring);
        mas_rec[i-1,5]:=trim(adoquery37.FieldByName('j_endTime').asstring);
        mas_rec[i-1,6]:=trim(adoquery37.FieldByName('name_sotr_su').Value);
        mas_rec[i-1,7]:=inttostr(adoquery37.FieldByName('j_color').Value);
        adoquery37.Next;
      end;
      adoquery37.First;
      adoquery37.EnableControls();
    end;
    saveDialog := TSaveDialog.Create(self);// Создание объекта диалога сохранения - назначая его нашей переменной диалога сохранения
    saveDialog.Title := 'Экспорт в Excel';    // Give the dialog a title
    saveDialog.InitialDir := GetCurrentDir;   // Установка начального каталога
    saveDialog.Filter := 'Excel file|*.xls';   // Разрешаем сохранять файлы типа .xls
    saveDialog.DefaultExt := 'xls';   // Установка расширения по умолчанию
    saveDialog.FilterIndex := 1;              // Выбор текстовых файлов как стартовый тип фильтра
    saveDialog.FileName:='PlannerEvents_'+datetostr(now);   // Отображение диалог сохранения файла
    if saveDialog.Execute
    then
    begin
      ShowMessage('File : '+saveDialog.FileName);
      if FileExists(saveDialog.FileName) then
        ShowMessage('Файл с таким именем уже существует')
      else
        Xls_Save(saveDialog.FileName);
    end
    else ShowMessage('Save file was cancelled');
   saveDialog.Free;    // Освобождения диалога
end;

procedure TForm159.sBitBtn68Click(Sender: TObject);
begin
  if (authorization_code=pssSA) or (authorization_code=pssSU) or (authorization_code=pssN) or (authorization_code=pssEv)
  or (authorization_code=pssZhukov) or (authorization_code=pssAO) or (authorization_code=pssOTK) then
    form90.show;
end;

procedure TForm159.Xls_Save(XLSFile:string);
const  xlExcel9795 = $0000002B;
       xlExcel8 = 56;
var  ExlApp, Sheet: OLEVariant;
  i, j, r, c:integer;
begin
  ExlApp := CreateOleObject('Excel.Application');  //создаем объект Excel
  ExlApp.Visible := false;     //делаем окно Excel невидимым
  ExlApp.Workbooks.Add(1);   //создаем книгу для экспорта
  Sheet := ExlApp.Workbooks[1].WorkSheets[1];    //создаем объект Sheet(страница) и указываем номер листа (1)
  Sheet.name:='Детали'; //задаем имя листу
  c:=7;    //считываем кол-во столбцов и строк в StringGrid
  r:=datamodule60.ADOQuery37.RecordCount;
  //ExlApp.columns[8].NumberFormat:='@';
  for j:= 1 to r do   //считываем значение из каждой ячейки и отправляем в таблицу Excel
    for i:= 1 to c do
    begin
     sheet.cells[j+1,i]:=mas_rec[j-1,i-1];
     if strtoint(mas_rec[j-1,7])=15793151 then
         sheet.cells[j+1,i].interior.color:=clSkyBlue;
     if strtoint(mas_rec[j-1,7])=65535 then
         sheet.cells[j+1,i].interior.color:=clyellow;
     if strtoint(mas_rec[j-1,7])=12639424 then
         sheet.cells[j+1,i].interior.color:=clMoneyGreen;
    end;
  sheet.cells[1,1]:='Предприятие';
  sheet.cells[1,2]:='Деталь';
  sheet.cells[1,3]:='Количество';
  sheet.cells[1,4]:='Операции';
  sheet.cells[1,5]:='Начало';
  sheet.cells[1,6]:='Конец';
  sheet.cells[1,7]:='Сотрудник СУ';
//  sheet.cells[1,8]:='Готовность';
  sheet.Columns[1].columnwidth:=25;
  sheet.Columns[2].columnwidth:=50;
  sheet.Columns[3].columnwidth:=10;
  sheet.Columns[4].columnwidth:=50;
  sheet.Columns[5].columnwidth:=20;
  sheet.Columns[6].columnwidth:=20;
  sheet.Columns[7].columnwidth:=20;
//  sheet.Columns[8].columnwidth:=15;
  ExlApp.DisplayAlerts := False; //отключаем все предупреждения Excel
  ExlApp.cells.AutoFilter;
  ExlApp.Workbooks[1].saveas(XLSFile, xlExcel8);
  showmessage('Файл сохранен');
  ExlApp.Quit; //закрываем приложение Excel
  ExlApp:=Unassigned;                      //очищаем выделенную память
  Sheet:=Unassigned;
end;

procedure TForm159.SearchBox1Change(Sender: TObject);
begin
 filterjobs;
end;

procedure TForm159.SearchBox2Change(Sender: TObject);
begin
  filterOrderToSend;
end;

procedure TForm159.SearchBox3Change(Sender: TObject);
begin
  filterlog;
end;

procedure TForm159.TabSheet2Show(Sender: TObject);
var i:integer;
begin
  rzDateTimeEdit1.Date:=(now-30);//now-7;
  rzDateTimeEdit2.Date:=(now+30);//now+14;
  with datamodule3 do
    begin
      GetZavodFromJobs;
      combobox1.Items.Clear;
      combobox1.Text:='';
      for i := 1 to adoquery1.RecordCount do
      begin
        combobox1.Items.Add(trim(adoquery1.Fields.Fields[0].value));
        adoquery1.Next;
      end;
    end;
    with datamodule60 do
    begin
      GetSotrFromSU;
      combobox2.Items.Clear;
      combobox2.Text:='';
      for i := 1 to adoquery1.RecordCount do
      begin
        combobox2.Items.Add(trim(adoquery1.Fields.Fields[0].value));
        adoquery1.Next;
      end;
    end;
    radiogroup1.ItemIndex:=0;
    statusJob:=0;
  filterjobs;
end;

procedure TForm159.TabSheet3Show(Sender: TObject);
var i:integer;
  d1,d2:string;
begin
    d1:='01.'+inttostr(monthof(now))+'.'+inttostr(yearof(now));
    d2:=datetostr(strtodate(d1)+30);
    rzDateTimeEdit9.Date:=strtodate(d1);//now-7;
    rzDateTimeEdit10.Date:=strtodate(d2);//now+14;
    with datamodule3 do
    begin
      GetZavodFromOrderTosend;
      combobox39.Items.Clear;
      combobox39.Text:='';
      for i := 1 to adoquery1.RecordCount do
      begin
        combobox39.Items.Add(trim(adoquery1.Fields.Fields[0].value));
        adoquery1.Next;
      end;
    end;
    filterOrderToSend;
end;

procedure TForm159.TabSheet4Show(Sender: TObject);
var  i:integer;
  d1,d2:string;
begin
    d1:=datetostr(now-2);
    d2:=datetostr(now+1);
    rzDateTimeEdit3.Date:=strtodate(d1);//now-7;
    rzDateTimeEdit4.Date:=strtodate(d2);
  with datamodule60 do
    begin
      GetOperationsFromLog;
      combobox5.Items.Clear;
      combobox5.Text:='';
      for i := 1 to adoquery1.RecordCount do
      begin
        combobox5.Items.Add(trim(adoquery1.Fields.Fields[0].value));
        adoquery1.Next;
      end;
      combobox5.Sorted:=true;
      GetDetailsFromLog;
      combobox4.Items.Clear;
      combobox4.Text:='';
      for i := 1 to adoquery1.RecordCount do
      begin
        combobox4.Items.Add(trim(adoquery1.Fields.Fields[0].value));
        adoquery1.Next;
      end;
      combobox4.Sorted:=true;
    end;
  filterLog;
end;

procedure TForm159.loadgridOrderToSend;
var w:integer;
begin
  dbgrideh3.DataSource:=datamodule60.DataSource38;
  w:=dbgrideh3.Width-60;
  dbgrideh3.Columns[0].Title.caption:='Деталь';
  dbgrideh3.Columns[0].Width:=trunc(0.25*w);
  dbgrideh3.Columns[1].Title.caption:='Предприятие';
  dbgrideh3.Columns[1].Width:=trunc(0.1*w);
  dbgrideh3.Columns[2].Title.caption:='Кол-во, План ОТК';
  dbgrideh3.Columns[2].Width:=trunc(0.05*w);
  dbgrideh3.Columns[3].Title.caption:='Кол-во, на СУ';
  dbgrideh3.Columns[3].Width:=trunc(0.05*w);
  dbgrideh3.Columns[1].Footer.Value:='Всего деталей:';
  dbgrideh3.Columns[1].Footer.valuetype:=fvtStaticText;
  dbgrideh3.Columns[2].Footer.ValueType:=fvtSum;
  dbgrideh3.Columns[4].Title.caption:='Добавлено';
  dbgrideh3.Columns[4].Width:=trunc(0.07*w);
  dbgrideh3.Columns[4].Alignment:=tacenter;
  dbgrideh3.Columns[5].Title.caption:='Срок выполнения';
  dbgrideh3.Columns[5].Width:=trunc(0.07*w);
  dbgrideh3.Columns[5].Alignment:=tacenter;
  dbgrideh3.Columns[6].Title.caption:='Срок ОТК';
  dbgrideh3.Columns[6].Width:=trunc(0.07*w);
  dbgrideh3.Columns[6].Alignment:=tacenter;
  dbgrideh3.Columns[7].visible:=false;
  dbgrideh3.Columns[8].visible:=false;
  dbgrideh3.Columns[9].visible:=false;
  dbgrideh3.Columns[10].visible:=false;
  dbgrideh3.Columns[11].visible:=false;
  dbgrideh3.Columns[12].Title.caption:='Комментарии';
  dbgrideh3.Columns[12].Width:=trunc(0.24*w);
  dbgrideh3.Columns[12].ToolTips:=true;
  dbgrideh3.Columns[13].visible:=false;
  dbgrideh3.Columns[14].Title.caption:='Спецификация';
  dbgrideh3.Columns[14].Width:=trunc(0.1*w);
  dbgrideh3.Columns[14].ToolTips:=true;
  dbgrideh3.Columns[15].visible:=false;
end;

procedure TForm159.filterOrderToSend;
  var zapros_select, zapros_from, zapros_where, zapros_order, n_plant:string;
  dt1,dt2,nam:string;
  CallData:TStringList;
  vrt,I:integer;
  begin
    dt1:=datetostr(rzDateTimeEdit9.Date);
    dt2:=datetostr(rzDateTimeEdit10.Date);
    n_plant:=trim(combobox39.Text);
    nam:=trim(SearchBox2.Text);
    if trim(nam)<>'' then
      nam:='%'+nam+'%';
    zapros_select:='select name_detail,nm_zavod,count_intoorder,countR,convert(varchar,date_input,104) as date_input,convert(varchar,date_wishready,104) as date_wishready ,date_otkready, date_factready,detail_id,id_intoorder,readiness,where_from,rtrim(comments_order),urgency';
    zapros_select:=zapros_select+', concat(rtrim(name_spec),'' от '',convert(varchar,date_spec,104)),label_po';
    zapros_from:='from detail, intoorder left join specification on id_spec=spec_id left join fromPlanToSU on id_intoorder=intoorder_id ';    //orders,orderlist,
    zapros_where:='where  id_detail=detail_id  and date_wishready>=:dt1 and date_wishready<=:dt2';  // and id_order=order_id  id_intoorder=intoorder_id and
    if trim(nam)<>'' then
      zapros_where:=zapros_where+' and name_detail like :nam';
    if n_plant<>'' then
      zapros_where:=zapros_where+' and nm_zavod=:n_plant';
    zapros_order:='order by id_intoorder';
    datamodule60.ADOQuery38.DisableControls();
    with datamodule60 do
    begin
      ADOQuery38.Close;
      ADOQuery38.SQL.Clear;
      ADOQuery38.SQL.add(zapros_select);
      ADOQuery38.SQL.add(zapros_from);
      ADOQuery38.SQL.add(zapros_where);
      ADOQuery38.SQL.add(zapros_order);
      ADOQuery38.Parameters.ParamByName('dt1').value:=dt1;
      ADOQuery38.Parameters.ParamByName('dt2').value:=dt2;
      if n_plant<>'' then
        ADOQuery38.Parameters.ParamByName('n_plant').value:=n_plant;
      if nam<>'' then
        ADOQuery38.Parameters.ParamByName('nam').value:=nam;
      ADOQuery38.open;
      if n_plant='' then
      begin
        ADOQuery38.First;
        CallData := TStringList.Create;
        CallData.Sorted := True;
        CallData.Duplicates := dupIgnore;
        for i:=1 to adoquery38.RecordCount do
        begin
          callData.add(trim(adoquery38.FieldByName('nm_zavod').value));
          ADOQuery38.Next;
        end;
        combobox39.Items.Clear;
        for i:=0 to callData.Count-1 do
          combobox39.Items.Add(CallData.Strings[i]);
      end;
    end;
    datamodule60.ADOQuery38.EnableControls();
    if datamodule60.ADOQuery38.RecordCount<>0 then
    begin
      if clkNum24<>0 then
        datamodule60.datasource38.DataSet.RecNo:=clkNum24
      else
        datamodule60.ADOQuery38.First;
    end;
    loadgridOrderToSend;
  end;

procedure TForm159.filterjobs;
var zapros_select, zapros_from, zapros_where, zapros_order:string;
  //dt1,dt2:string;
  nam,nmz,nms:string;
  c:integer;
  dt1,dt2:Tdate;
begin
  //dt1:=datetostr(rzDateTimeEdit1.Date);
  //dt2:=datetostr(rzDateTimeEdit2.Date);
  dt1:=(rzDateTimeEdit1.Date);
  dt2:=(rzDateTimeEdit2.Date);
  nmz:=trim(comboBox1.Text);
  nms:=trim(comboBox2.Text);
  nam:=trim(SearchBox1.Text);
  if trim(nam)<>'' then
    nam:='%'+nam+'%';
  zapros_select:='select id_job,name_zavod, j_title, j_count, j_body, j_startTime,j_endTime, name_sotr_su , j_color';
  zapros_from:='from jobsForSU,sotr_su,detail,zavod';
  zapros_where:='where j_resource=id_sotr_su and j_title=name_detail and id_zavod=zavod_id  and j_startTime>=:dt1 and j_startTime<=:dt2';// and convert(datetime,j_startTime,120)>=:dt1 and convert(datetime,j_startTime,120)<=:dt2'; //
  if trim(nam)<>'' then
      zapros_where:=zapros_where+' and name_detail like :nam';
  if trim(nmz)<>'' then
      zapros_where:=zapros_where+' and name_zavod=:nmz';
  if trim(nms)<>'' then
      zapros_where:=zapros_where+' and name_sotr_su=:nms';
   if statusJob<>0 then
      zapros_where:=zapros_where+' and j_color=:statusJob';
  zapros_order:='order by id_job desc';
  with datamodule60 do
  begin
      ADOQuery37.DisableControls();
      ADOQuery37.SQL.Clear;
      ADOQuery37.SQL.add(zapros_select);
      ADOQuery37.SQL.add(zapros_from);
      ADOQuery37.SQL.add(zapros_where);
      ADOQuery37.SQL.add(zapros_order);
      ADOQuery37.Parameters.ParamByName('dt1').value:=dt1;
      ADOQuery37.Parameters.ParamByName('dt2').value:=dt2;
      if nam<>'' then
          ADOQuery37.Parameters.ParamByName('nam').value:=nam;
      if nmz<>'' then
          ADOQuery37.Parameters.ParamByName('nmz').value:=nmz;
      if nms<>'' then
          ADOQuery37.Parameters.ParamByName('nms').value:=nms;
      if statusJob<>0 then
          ADOQuery37.Parameters.ParamByName('statusJob').value:=statusJob;
      ADOQuery37.ExecSQL;
      ADOQuery37.Active:=true;
      ADOQuery37.EnableControls();
      c:=ADOQuery37.RecordCount;
      if c<>0 then
      begin
        if clkNum37<>0 then
          DataSource37.DataSet.RecNo:=clkNum37
        else
          ADOQuery37.First;
      end;
  end;
  loadgridAllJobs;
end;

procedure TForm159.loadgridAllJobs;
var w:integer;
begin
  dbgrideh2.DataSource:=datamodule60.DataSource37;
  w:=dbgrideh2.Width-60;
  dbgrideh2.Columns[0].Visible:=false;
  dbgrideh2.Columns[1].Title.caption:='Предприятие';
  dbgrideh2.Columns[1].Width:=trunc(0.1*w);
  dbgrideh2.Columns[2].Title.caption:='Деталь';
  dbgrideh2.Columns[2].Width:=trunc(0.3*w);
  dbgrideh2.Columns[3].Title.caption:='Количество';
  dbgrideh2.Columns[3].Width:=trunc(0.05*w);
  dbgrideh2.Columns[3].Footer.ValueType:=fvtSum;
  dbgrideh2.Columns[4].Title.caption:='Описание работ';
  dbgrideh2.Columns[4].Width:=trunc(0.25*w);
  dbgrideh2.Columns[5].Title.caption:='Начало работ';
  dbgrideh2.Columns[5].Width:=trunc(0.1*w);
  dbgrideh2.Columns[6].Title.caption:='Окончание работ';
  dbgrideh2.Columns[6].Width:=trunc(0.1*w);
  dbgrideh2.Columns[7].Title.caption:='Сотрудник СУ';
  dbgrideh2.Columns[7].Width:=trunc(0.1*w);
  dbgrideh2.Columns[8].Visible:=false;
end;

procedure TForm159.filterLog;
var zapros_select, zapros_from, zapros_where, zapros_order:string;
  //dt1,dt2:string;
  nam,nmd,oper:string;
  c:integer;
  dt1,dt2:Tdate;
begin
  dt1:=(rzDateTimeEdit3.Date);
  dt2:=(rzDateTimeEdit4.Date);
  nmd:=trim(comboBox4.Text);
  oper:=trim(comboBox5.Text);
  nam:=trim(SearchBox3.Text);
  if trim(nam)<>'' then
    nam:='%'+nam+'%';
  zapros_select:='select dt_log,operation, detail, st_before, st_after';
  zapros_from:='from log_su_plan';
  zapros_where:='where dt_log>=:dt1 and dt_log<=:dt2';// and convert(datetime,j_startTime,120)>=:dt1 and convert(datetime,j_startTime,120)<=:dt2'; //
  if trim(nam)<>'' then
      zapros_where:=zapros_where+' and detail like :nam';
  if trim(nmd)<>'' then
      zapros_where:=zapros_where+' and detail=:nmd';
  if trim(oper)<>'' then
      zapros_where:=zapros_where+' and operation=:oper';
  zapros_order:='order by dt_log desc';
  with datamodule60 do
  begin
      ADOQuery39.DisableControls();
      ADOQuery39.SQL.Clear;
      ADOQuery39.SQL.add(zapros_select);
      ADOQuery39.SQL.add(zapros_from);
      ADOQuery39.SQL.add(zapros_where);
      ADOQuery39.SQL.add(zapros_order);
      ADOQuery39.Parameters.ParamByName('dt1').value:=dt1;
      ADOQuery39.Parameters.ParamByName('dt2').value:=dt2;
      if nam<>'' then
          ADOQuery39.Parameters.ParamByName('nam').value:=nam;
      if nmd<>'' then
          ADOQuery39.Parameters.ParamByName('nmd').value:=nmd;
      if oper<>'' then
          ADOQuery39.Parameters.ParamByName('oper').value:=oper;
      ADOQuery39.ExecSQL;
      ADOQuery39.Active:=true;
      ADOQuery39.EnableControls();
  end;
  loadgridLog;
end;

procedure TForm159.loadgridLog;
var w:integer;
begin
  dbgrideh4.DataSource:=datamodule60.DataSource39;
  w:=dbgrideh4.Width-60;
  dbgrideh4.Columns[0].Title.caption:='Дата записи';
  dbgrideh4.Columns[0].Width:=trunc(0.1*w);
  dbgrideh4.Columns[1].Title.caption:='Операция';
  dbgrideh4.Columns[1].Width:=trunc(0.2*w);
  dbgrideh4.Columns[2].Title.caption:='Деталь';
  dbgrideh4.Columns[2].Width:=trunc(0.3*w);
  dbgrideh4.Columns[3].Title.caption:='Предыдущее значение';
  dbgrideh4.Columns[3].Width:=trunc(0.2*w);
  dbgrideh4.Columns[4].Title.caption:='Текущее значение';
  dbgrideh4.Columns[4].Width:=trunc(0.2*w);
end;

procedure TForm159.ZoomIn(const Step: Integer = 4);
begin
  if PlannerControlEh1.ActivePlannerView = PlannerWeekViewEh1 then
  begin
    PlannerWeekViewEh1.DataBarsArea.RowHeight := PlannerWeekViewEh1.DataBarsArea.RowHeight + Step;
    PlannerWeekViewEh1.MinDayColWidth := PlannerWeekViewEh1.MinDayColWidth + 6;
  end
  else if PlannerControlEh1.ActivePlannerView = PlannerMonthViewEh1 then
  begin
    PlannerMonthViewEh1.DataBarsArea.RowHeight := PlannerMonthViewEh1.DataBarsArea.RowHeight + Step;
    PlannerMonthViewEh1.MinDayColWidth := PlannerMonthViewEh1.MinDayColWidth + 6;
  end
  else if PlannerControlEh1.ActivePlannerView = PlannerDayViewEh1 then
  begin
    PlannerDayViewEh1.DataBarsArea.RowHeight := PlannerDayViewEh1.DataBarsArea.RowHeight + Step;
    PlannerDayViewEh1.MinDayColWidth := PlannerDayViewEh1.MinDayColWidth + 6;
  end
  else if PlannerControlEh1.ActivePlannerView = PlannerHorzHourslineViewEh1 then
  begin
    PlannerHorzHourslineViewEh1.DataBarsArea.ColWidth := PlannerHorzHourslineViewEh1.DataBarsArea.ColWidth + 4;
    PlannerHorzHourslineViewEh1.MinDataRowHeight := PlannerHorzHourslineViewEh1.MinDataRowHeight + 2;
  end
  else if PlannerControlEh1.ActivePlannerView = PlannerHorzDayslineViewEh1 then
  begin
    PlannerHorzDayslineViewEh1.DataBarsArea.ColWidth := PlannerHorzDayslineViewEh1.DataBarsArea.ColWidth + 6;
    PlannerHorzDayslineViewEh1.MinDataRowHeight := PlannerHorzDayslineViewEh1.MinDataRowHeight + 2;
  end;
end;

procedure TForm159.ZoomOut(const Step: Integer = 4);
begin
  if PlannerControlEh1.ActivePlannerView = PlannerWeekViewEh1 then
  begin
    PlannerWeekViewEh1.DataBarsArea.RowHeight := PlannerWeekViewEh1.DataBarsArea.RowHeight - Step;
    PlannerWeekViewEh1.MinDayColWidth := PlannerWeekViewEh1.MinDayColWidth - 6;
  end
  else if PlannerControlEh1.ActivePlannerView = PlannerMonthViewEh1 then
  begin
    PlannerMonthViewEh1.DataBarsArea.RowHeight := PlannerMonthViewEh1.DataBarsArea.RowHeight - Step;
    PlannerMonthViewEh1.MinDayColWidth := PlannerMonthViewEh1.MinDayColWidth - 6;
  end
  else if PlannerControlEh1.ActivePlannerView = PlannerDayViewEh1 then
  begin
    PlannerDayViewEh1.DataBarsArea.RowHeight := PlannerDayViewEh1.DataBarsArea.RowHeight - Step;
    PlannerDayViewEh1.MinDayColWidth := PlannerDayViewEh1.MinDayColWidth - 6;
  end
  else if PlannerControlEh1.ActivePlannerView = PlannerHorzHourslineViewEh1 then
  begin
    PlannerHorzHourslineViewEh1.DataBarsArea.ColWidth := PlannerHorzHourslineViewEh1.DataBarsArea.ColWidth - 4;
    PlannerHorzHourslineViewEh1.MinDataRowHeight := PlannerHorzHourslineViewEh1.MinDataRowHeight - 2;
  end
  else if PlannerControlEh1.ActivePlannerView = PlannerHorzDayslineViewEh1 then
  begin
    PlannerHorzDayslineViewEh1.DataBarsArea.ColWidth := PlannerHorzDayslineViewEh1.DataBarsArea.ColWidth - 6;
    PlannerHorzDayslineViewEh1.MinDataRowHeight := PlannerHorzDayslineViewEh1.MinDataRowHeight - 2;
  end;
end;

procedure TForm159.WeekZoomIn(const Step: Integer = 4);
begin
  // крупнее слоты (вертикально)
  PlannerWeekViewEh1.DataBarsArea.RowHeight := PlannerWeekViewEh1.DataBarsArea.RowHeight + Step;
end;

procedure TForm159.WeekZoomOut(const Step: Integer = 4);
const
  MIN_ROW_HEIGHT = 12;
begin
  // мельче слоты, но не уходим слишком низко
  PlannerWeekViewEh1.DataBarsArea.RowHeight := Max(PlannerWeekViewEh1.DataBarsArea.RowHeight - Step, MIN_ROW_HEIGHT);
end;

procedure TForm159.SetWeekVisibleDays(Days: Integer);
begin
 {if Days < 7 then Days := 7;

  // 1) скроллбар включим, чтобы можно было листать много дней
  EnableWeekHScrollAuto;

  // 2) выставим количество колонок (protected поле + служебные методы)
  with TWeekViewCrack(PlannerWeekViewEh1) do
  begin
    FDayCols := Days;        // protected поле
    BuildDaysGridMode;       // перестроить сетку
    InvalidateGrid;          // перерисовать
  end;

  // 3) чуть ужмём ширину дня, чтобы больше помещалось
  PlannerWeekViewEh1.MinDayColWidth := 90; // подбери под свой шрифт/окно}
 if PlannerWeekViewEh1 is TWeekViewMonthRange then
    TWeekViewMonthRange(PlannerWeekViewEh1).SetDayCols(Days);

  // Немного увеличим минимальную ширину дня — это спровоцирует автоскролл,
  // если Days много и ширины не хватает.
  PlannerWeekViewEh1.MinDayColWidth := 100; // подбери под своё окно/шрифт
end;


// Удобный хелпер: показать ровно текущий месяц (по текущей дате вида)
procedure TForm159.ShowCurrentMonthInWeekView;
var
  Y, M, D, DaysInM: Word;
  StartOfMonth: TDate;
begin
  DecodeDate(PlannerControlEh1.CurrentTime, Y, M, D);
  DaysInM := DaysInAMonth(Y, M);
  PlannerWeekViewEh1.StartDate := EncodeDate(Y, M, 1);
  SetWeekVisibleDays(DaysInM);  // 28..31              // 28..31
end;

// Быстрые пресеты
procedure TForm159.Show7Days;  begin SetWeekVisibleDays(7);  end;
procedure TForm159.Show14Days; begin SetWeekVisibleDays(14); end;
procedure TForm159.Show21Days; begin SetWeekVisibleDays(21); end;
procedure TForm159.Show28Days; begin SetWeekVisibleDays(28); end;
procedure TForm159.Show31Days; begin SetWeekVisibleDays(31); end;

procedure TForm159.ShowMonth_HorzDaysline;
var
  Y, M, D: Word;
  FirstDay: TDate;
begin
  PlannerControlEh1.ActivePlannerView := PlannerHorzDayslineViewEh1;

  // 1-е число текущего месяца
  DecodeDate(PlannerCalendarPickerEh1.Date, Y, M, D);
  FirstDay := EncodeDate(Y, M, 1);

  PlannerHorzDayslineViewEh1.TimeRange := dlrMonthEh;
  PlannerHorzDayslineViewEh1.StartDate := FirstDay;

  // косметика, чтобы читалось
  PlannerHorzDayslineViewEh1.DataBarsArea.ColWidth := 48;// 90; // ширина дня
  PlannerHorzDayslineViewEh1.MinDataRowHeight := 22;      // высота строки

  HorzDays_ForceRelayout;
end;

procedure TForm159.ShowWeek_HorzDaysline;
begin
  PlannerControlEh1.ActivePlannerView := PlannerHorzDayslineViewEh1;

  PlannerHorzDayslineViewEh1.TimeRange := dlrWeekEh;
end;

procedure TForm159.HorzDays_ZoomIn;
begin
  // крупнее: шире день, выше строки
  PlannerHorzDayslineViewEh1.DataBarsArea.ColWidth :=
    PlannerHorzDayslineViewEh1.DataBarsArea.ColWidth + 6;
  HorzDays_ForceRelayout;
end;

procedure TForm159.HorzDays_ZoomOut;
begin
  // мельче, но не уходим в нули
  if PlannerHorzDayslineViewEh1.DataBarsArea.ColWidth > 20 then
    PlannerHorzDayslineViewEh1.DataBarsArea.ColWidth :=
      PlannerHorzDayslineViewEh1.DataBarsArea.ColWidth - 6;
  HorzDays_ForceRelayout;
end;

procedure TForm159.HorzDays_VZoom(const Delta: Integer);
const
  MIN_H = 14;   // не даём строкам схлопнуться
  MAX_H = 120;  // ограничим, чтобы не улететь слишком крупно
var
  H: Integer;
begin
  H := EnsureRange(PlannerHorzDayslineViewEh1.MinDataRowHeight + Delta, MIN_H, MAX_H);
  if H <> PlannerHorzDayslineViewEh1.MinDataRowHeight then
  begin
    PlannerHorzDayslineViewEh1.MinDataRowHeight := H;
    // форсируем пересчёт/отрисовку, чтобы изменение было сразу видно
    PlannerHorzDayslineViewEh1.Invalidate;
  end;
  HorzDays_ForceRelayout;
end;

procedure TForm159.HorzDays_VZoomIn;
begin
  HorzDays_VZoom(+2);
end;

procedure TForm159.HorzDays_VZoomOut;
begin
  HorzDays_VZoom(-2);
end;

end.
