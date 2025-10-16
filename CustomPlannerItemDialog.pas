{$I EhLib.Inc}

unit CustomPlannerItemDialog;

interface

uses
{$IFDEF CIL}
  EhLibVCLNET,
  WinUtils,
{$ELSE}
  {$IFDEF FPC}
  EhLibLCL, LMessages, LCLType, Win32Extra,
  {$ELSE}
  EhLibVCL, DBConsts, RTLConsts,
  {$ENDIF}
{$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Mask,
  DBCtrlsEh, PlannersEh, PlannerDataEh,
  DateUtils, Db,
  ComCtrls, ExtCtrls;

type
  TCustomPlannerItemForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    StartDateEdit: TDateTimePicker;
    EndDateEdit: TDateTimePicker;
    AllDayCheck: TCheckBox;
    OKButton: TButton;
    CancelButton: TButton;
    eTitle: TDBEditEh;
    cbStartTimeEdit: TDBComboBoxEh;
    cbFinishTimeEdit: TDBComboBoxEh;
    eBody: TDBMemoEh;
    Bevel3: TBevel;
    cbxRecource: TDBComboBoxEh;
    Bevel4: TBevel;
    cmbCategory: TDBComboBoxEh;
    Label4: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    DBComboBoxEh2: TDBComboBoxEh;
    Label5: TLabel;
    Label6: TLabel;
    procedure cbStartTimeEditEnter(Sender: TObject);
    procedure cbStartTimeEditChange(Sender: TObject);
    procedure StartDateEditEnter(Sender: TObject);
    procedure StartDateEditChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBComboBoxEh1Change(Sender: TObject);
  private
    FDeltaTime: TDateTime;
    FDeltaDate: TDateTime;
//    FExtraDataSet: TDataSet;
  public
    procedure InitForm(Item: TPlannerDataItemEh; ExtraDataSet: TDataSet);
    function FormStarDate: TDateTime;
    function FormEndDate: TDateTime;
  end;

var
  CustomPlannerItemForm: TCustomPlannerItemForm;

function CustomEditPlanItem(Planner: TPlannerControlEh; Item: TPlannerDataItemEh): Boolean;
procedure CustomEditNewItem(Planner: TPlannerControlEh);

implementation

{$R *.dfm}

uses unit3;

//function CustomEditPlanItem(Item: TPlannerDataItemEh; ExtraDataSet: TDataSet): Boolean;
function CustomEditPlanItem(Planner: TPlannerControlEh; Item: TPlannerDataItemEh): Boolean;
var
  AForm: TCustomPlannerItemForm;
  FDummyCheckPlanItem, FOldPlanItemState: TPlannerDataItemEh;
  ErrorText: String;
  CheckChange: Boolean;
begin
  Result := False;
  AForm := TCustomPlannerItemForm.Create(Application);
  try
    AForm.InitForm(Planner, Item);
    if AForm.ShowModal = mrOK then
    begin
      FDummyCheckPlanItem := Item.Source.CreateTmpPlannerItem;
      FOldPlanItemState := Item.Source.CreateTmpPlannerItem;
      try
        FDummyCheckPlanItem.Assign(Item);
        FDummyCheckPlanItem.Title := AForm.eTitle.Text;
        FDummyCheckPlanItem.Body := AForm.eBody.Text;
        FDummyCheckPlanItem.StartTime := AForm.FormStarDate;
        FDummyCheckPlanItem.EndTime := AForm.FormEndDate;
        FDummyCheckPlanItem.AllDay := AForm.AllDayCheck.Checked;
        if Item.Source.Resources.Count > 0 then
        begin
          if AForm.cbxRecource.ItemIndex >= 0 then
            FDummyCheckPlanItem.ResourceID := AForm.cbxRecource.KeyItems[AForm.cbxRecource.ItemIndex];
        end;
        FDummyCheckPlanItem.EndEdit(True);

        ErrorText := '';
        CheckChange :=
          Planner.CheckPlannerItemInteractiveChanging(
            Planner.ActivePlannerView, Item, FDummyCheckPlanItem, ErrorText);

        if CheckChange then
        begin
          FOldPlanItemState.Assign(Item);
          Item.BeginEdit;
          Item.Assign(FDummyCheckPlanItem);
          Item.EndEdit(True);
          Planner.PlannerItemInteractiveChanged(Planner.ActivePlannerView, Item, FOldPlanItemState);
          Result := True;
        end else
        begin
          ShowMessage(ErrorText);
          Result := False;
        end;
      finally
        FDummyCheckPlanItem.Free;
        FOldPlanItemState.Free;
      end;
    end;
  finally
    AForm.Free;
  end;
end;


procedure CustomEditNewItem(Planner: TPlannerControlEh);
var
  StartTime, EndTime: TDateTime;
  PlanItem: TPlannerDataItemEh;
  AResource: TPlannerResourceEh;
begin
  if Planner.NewItemParams(StartTime, EndTime, AResource) then
  begin
    PlanItem := Planner.PlannerDataSource.NewItem;
    PlanItem.Title := 'New Item';
    PlanItem.Body := '';
    PlanItem.AllDay := False;
    PlanItem.StartTime := StartTime;
    PlanItem.EndTime := EndTime;
    PlanItem.Resource := AResource;
  //  ExtraDataSet.Append;
    if CustomEditPlanItem(PlanItem) then
      PlanItem.EndEdit(True)
    else
      PlanItem.EndEdit(False);
  end;
end;

{ TPlannerItemForm }

procedure TCustomPlannerItemForm.StartDateEditEnter(Sender: TObject);
begin
  if (StartDateEdit.DateTime <> 0) and (EndDateEdit.DateTime <> 0) then
    try
      FDeltaDate := EndDateEdit.DateTime - StartDateEdit.DateTime;
    except
      on EConvertError do FDeltaTime := 0;
    end;
end;

procedure TCustomPlannerItemForm.StartDateEditChange(Sender: TObject);
begin
 if FDeltaDate <> 0 then
   EndDateEdit.DateTime := StartDateEdit.DateTime + FDeltaDate;
end;

procedure TCustomPlannerItemForm.cbStartTimeEditEnter(Sender: TObject);
begin
  if (cbStartTimeEdit.Text <> '') and (cbFinishTimeEdit.Text <> '') then
    try
      FDeltaTime := StrToTime(cbFinishTimeEdit.Text) - StrToTime(cbStartTimeEdit.Text)
    except
      on EConvertError do FDeltaTime := 0;
    end;
end;

procedure TCustomPlannerItemForm.DBComboBoxEh1Change(Sender: TObject);
var i:integer;
begin
    DBComboBoxEh2.Items.Clear;
  datamodule3.GetListOfDetails(DBComboBoxEh1.Text);
  datamodule3.ADOQuery3.First;
  for i := 1 to datamodule3.ADOQuery3.RecordCount do
  begin
    DBComboBoxEh2.Items.add(trim(datamodule3.ADOQuery3.fields.Fields[0].Value));
    datamodule3.ADOQuery3.Next;
  end;
end;

procedure TCustomPlannerItemForm.FormShow(Sender: TObject);
var i:integer;
begin
  datamodule3.GetListOfPlants;
      DBComboBoxEh1.Text:='';
      DBComboBoxEh1.Items.Clear;
      for i:=1 to datamodule3.adoquery2.RecordCount do
      begin
        DBComboBoxEh1.Items.Add(trim(datamodule3.adoquery2.Fields.Fields[0].value));
        datamodule3.adoquery2.Next;
      end;
end;

function TCustomPlannerItemForm.FormStarDate: TDateTime;
begin
  Result := Trunc(StartDateEdit.DateTime) + Frac(StrToTime(cbStartTimeEdit.Text));
end;

function TCustomPlannerItemForm.FormEndDate: TDateTime;
begin
  Result := Trunc(EndDateEdit.DateTime) + Frac(StrToTime(cbFinishTimeEdit.Text));
end;

procedure TCustomPlannerItemForm.cbStartTimeEditChange(Sender: TObject);
var
  s: String;
  ATime: TDateTime;

  function IsDigit(c: Char): Boolean;
  begin
    Result := CharInSetEh(c, ['0','1','2','3','4','5','6','7','8','9',' '])
  end;

begin
  s := cbStartTimeEdit.Text;
  if (Length(s) = 5) and
     IsDigit(s[1]) and
     IsDigit(s[2]) and
     (s[3] = ':') and
     IsDigit(s[4]) and
     IsDigit(s[5])
  then
   if FDeltaTime <> 0 then
   begin
     ATime := StrToTime(cbStartTimeEdit.Text);
     cbFinishTimeEdit.Text := FormatDateTime('HH:MM', ATime + FDeltaTime);
   end;
end;

procedure TCustomPlannerItemForm.InitForm(Item: TPlannerDataItemEh; ExtraDataSet: TDataSet);
var
  i: Integer;
begin
  eTitle.Text := Item.Title;
  eBody.Text := Item.Body;

  StartDateEdit.OnChange := nil;
  StartDateEdit.DateTime := Item.StartTime;
  StartDateEdit.OnChange := StartDateEditChange;

  EndDateEdit.DateTime := Item.EndTime;
  AllDayCheck.Checked := Item.AllDay;

  cbStartTimeEdit.OnChange := nil;
  cbStartTimeEdit.Text := FormatDateTime('HH:MM', Item.StartTime);
  cbStartTimeEdit.OnChange := cbStartTimeEditChange;

  cbFinishTimeEdit.Text := FormatDateTime('HH:MM', Item.EndTime);

  if (Item.Source.Resources.Count > 0) then
  begin
    for i := 0 to Item.Source.Resources.Count-1 do
    begin
      cbxRecource.Items.Add(Item.Source.Resources[i].Name);
      cbxRecource.KeyItems.Add(VarToStr(Item.Source.Resources[i].ResourceID));
    end;
  end;

  cbxRecource.ItemIndex := cbxRecource.KeyItems.IndexOf(VarToStr(Item.ResourceID));

  if ExtraDataSet.State = dsInsert then
// Ok
  else if ExtraDataSet.Locate('Id', Item.ItemID, []) then
  begin
    cmbCategory.Value := ExtraDataSet['Category'];
  end;
end;

end.
