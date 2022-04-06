unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, KaveNegarUnit, Menus, Vcl.CheckLst;

type
  TForm1 = class(TForm)
    KaveNegar1: TKaveNegar;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo2: TMemo;
    Button8: TButton;
    Edit1: TMemo;
    Edit2: TMemo;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetObject;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SetObject;
var
  I:SmallInt;
begin
  KaveNegar1.Receptor.Clear;
  for I := 0 to Edit1.Lines.Count-1 do
    KaveNegar1.Receptor.Add(Edit1.Lines[i]);
  KaveNegar1.Message.Clear;
  KaveNegar1.Message.Append(Edit2.Text);
  KaveNegar1.SenderNo.Clear;
  KaveNegar1.SenderNo.Add(Edit3.Text);
  KaveNegar1.APIKey:=Edit4.Text;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  knMessageDataArr:TknMessageDataArr;
  R:TKNStatus;
  I:SmallInt;
begin
  SetObject;
  if KaveNegar1.Active then
  begin
    R:=KaveNegar1.SendMessage(knMessageDataArr);
  end;
  Memo2.Lines.Append(format('Status         : %d',[R.StatusValue]));
  Memo2.Lines.Append(format('Status Message : %s',[R.StatusMsg]));
  Memo2.Lines.Append('=================================');
  for I := 0 to Length(knMessageDataArr)-1 do
    begin
      Memo2.Lines.Append(format('Message ID  : %d',[knMessageDataArr[i].MessageID]));
      Memo2.Lines.Append(format('MessageText : %s',[knMessageDataArr[i].MessageText]));
      Memo2.Lines.Append(format('Status      : %d',[knMessageDataArr[i].Status]));
      Memo2.Lines.Append(format('StatusText  : %s',[knMessageDataArr[i].StatusText]));
      Memo2.Lines.Append(format('Sender      : %s',[knMessageDataArr[i].Sender]));
      Memo2.Lines.Append(format('Receptor    : %s',[knMessageDataArr[i].Receptor]));
      Memo2.Lines.Append(format('Date        : %s',[DateTimetoStr(knMessageDataArr[i].Date)]));
      Memo2.Lines.Append(format('Cost        : %d',[knMessageDataArr[i].Cost]));
      Memo2.Lines.Append('---------------------------------');
    end;
  Memo2.Lines.Append('=================================');
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  knMessageDataArr:TknMessageDataArr;
  R:TKNStatus;
  I:SmallInt;
begin
  SetObject;
  if KaveNegar1.Active then
    R:=KaveNegar1.SendGroupMessage(knMessageDataArr);
  Memo2.Lines.Append(format('Status         : %d',[R.StatusValue]));
  Memo2.Lines.Append(format('Status Message : %s',[R.StatusMsg]));
  Memo2.Lines.Append('=================================');
  for I := 0 to Length(knMessageDataArr)-1 do
    begin
      Memo2.Lines.Append(format('Message ID  : %d',[knMessageDataArr[i].MessageID]));
      Memo2.Lines.Append(format('MessageText : %s',[knMessageDataArr[i].MessageText]));
      Memo2.Lines.Append(format('Status      : %d',[knMessageDataArr[i].Status]));
      Memo2.Lines.Append(format('StatusText  : %s',[knMessageDataArr[i].StatusText]));
      Memo2.Lines.Append(format('Sender      : %s',[knMessageDataArr[i].Sender]));
      Memo2.Lines.Append(format('Receptor    : %s',[knMessageDataArr[i].Receptor]));
      Memo2.Lines.Append(format('Date        : %s',[DateTimetoStr(knMessageDataArr[i].Date)]));
      Memo2.Lines.Append(format('Cost        : %d',[knMessageDataArr[i].Cost]));
      Memo2.Lines.Append('---------------------------------');
    end;
  Memo2.Lines.Append('=================================');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  knMessageDataArr:TknMessageDataArr;
  R:TKNStatus;
  MessageID:TStrings;
  I:SmallInt;
begin
  SetObject;

  MessageID:=TStringList.Create;
  MessageID.Append('137234');
  MessageID.Append('136823');
  MessageID.Append('137009');
  if KaveNegar1.Active then
    R:=KaveNegar1.GetMessageData(MessageID, knMessageDataArr);
  Memo2.Lines.Append(format('Status         : %d',[R.StatusValue]));
  Memo2.Lines.Append(format('Status Message : %s',[R.StatusMsg]));
  Memo2.Lines.Append('=================================');
  for I := 0 to Length(knMessageDataArr)-1 do
    begin
      Memo2.Lines.Append(format('Message ID  : %d',[knMessageDataArr[i].MessageID]));
      Memo2.Lines.Append(format('MessageText : %s',[knMessageDataArr[i].MessageText]));
      Memo2.Lines.Append(format('Status      : %d',[knMessageDataArr[i].Status]));
      Memo2.Lines.Append(format('StatusText  : %s',[knMessageDataArr[i].StatusText]));
      Memo2.Lines.Append(format('Sender      : %s',[knMessageDataArr[i].Sender]));
      Memo2.Lines.Append(format('Receptor    : %s',[knMessageDataArr[i].Receptor]));
      Memo2.Lines.Append(format('Date        : %s',[DateTimetoStr(knMessageDataArr[i].Date)]));
      Memo2.Lines.Append(format('Cost        : %d',[knMessageDataArr[i].Cost]));
      Memo2.Lines.Append('---------------------------------');
    end;
  Memo2.Lines.Append('=================================');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  knStatusDataArr:TknStatusDataArr;
  R:TKNStatus;
  I:SmallInt;
begin
  SetObject;

  KaveNegar1.MessageID.Clear;
  KaveNegar1.MessageID.Append('137234');
  KaveNegar1.MessageID.Append('136907');
  KaveNegar1.MessageID.Append('136666');
  if KaveNegar1.Active then
    R:=KaveNegar1.GetMessageStatus(knStatusDataArr);
  Memo2.Lines.Append(format('Status         : %d',[R.StatusValue]));
  Memo2.Lines.Append(format('Status Message : %s',[R.StatusMsg]));
  Memo2.Lines.Append('=================================');
  for I := 0 to Length(knStatusDataArr)-1 do
    begin
      Memo2.Lines.Append(format('Message ID : %d',[knStatusDataArr[i].MessageID]));
      Memo2.Lines.Append(format('Status     : %d',[knStatusDataArr[i].Status]));
      Memo2.Lines.Append(format('StatusText : %s',[knStatusDataArr[i].StatusText]));
      Memo2.Lines.Append('---------------------------------');
    end;
  Memo2.Lines.Append('=================================');
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  knStatusDataArr:TknStatusDataArr;
  R:TKNStatus;
  MessageID:TStrings;
  I:SmallInt;
begin
  SetObject;

  MessageID:=TStringList.Create;
  MessageID.Append('137234');
  MessageID.Append('136907');
  MessageID.Append('136666');
  if KaveNegar1.Active then
    R:=KaveNegar1.CancelMessage(MessageID, knStatusDataArr);
  Memo2.Lines.Append(format('Status         : %d',[R.StatusValue]));
  Memo2.Lines.Append(format('Status Message : %s',[R.StatusMsg]));
  Memo2.Lines.Append('=================================');
  for I := 0 to Length(knStatusDataArr)-1 do
    begin
      Memo2.Lines.Append(format('Message ID : %d',[knStatusDataArr[i].MessageID]));
      Memo2.Lines.Append(format('Status     : %d',[knStatusDataArr[i].Status]));
      Memo2.Lines.Append(format('StatusText : %s',[knStatusDataArr[i].StatusText]));
      Memo2.Lines.Append('---------------------------------');
    end;
  Memo2.Lines.Append('=================================');
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  knMessageDataArr:TknMessageDataArr;
  R:TKNStatus;
  I:SmallInt;
begin
  SetObject;

  if KaveNegar1.Active then
    R:=KaveNegar1.ReadMessage(False, knMessageDataArr);
  Memo2.Lines.Append(format('Status         : %d',[R.StatusValue]));
  Memo2.Lines.Append(format('Status Message : %s',[R.StatusMsg]));
  Memo2.Lines.Append('=================================');
  for I := 0 to Length(knMessageDataArr)-1 do
    begin
      Memo2.Lines.Append(format('Message ID  : %d',[knMessageDataArr[i].MessageID]));
      Memo2.Lines.Append(format('MessageText : %s',[knMessageDataArr[i].MessageText]));
      Memo2.Lines.Append(format('Sender      : %d',[knMessageDataArr[i].Sender]));
      Memo2.Lines.Append(format('Receptor    : %s',[knMessageDataArr[i].Receptor]));
      Memo2.Lines.Append(format('Date        : %s',[DateTimetoStr(knMessageDataArr[i].Date)]));
      Memo2.Lines.Append('---------------------------------');
    end;
  Memo2.Lines.Append('=================================');
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  knMessageDataArr:TknMessageDataArr;
  R:TKNStatus;
  I:SmallInt;
begin
  SetObject;

  if KaveNegar1.Active then
    R:=KaveNegar1.ReadMessage(True, knMessageDataArr);
  Memo2.Lines.Append(format('Status         : %d',[R.StatusValue]));
  Memo2.Lines.Append(format('Status Message : %s',[R.StatusMsg]));
  Memo2.Lines.Append('=================================');
  for I := 0 to Length(knMessageDataArr)-1 do
    begin
      Memo2.Lines.Append(format('Message ID  : %d',[knMessageDataArr[i].MessageID]));
      Memo2.Lines.Append(format('MessageText : %s',[knMessageDataArr[i].MessageText]));
      Memo2.Lines.Append(format('Sender      : %s',[knMessageDataArr[i].Sender]));
      Memo2.Lines.Append(format('Receptor    : %s',[knMessageDataArr[i].Receptor]));
      Memo2.Lines.Append(format('Date        : %s',[DateTimetoStr(knMessageDataArr[i].Date)]));
      Memo2.Lines.Append('---------------------------------');
    end;
  Memo2.Lines.Append('=================================');
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  knAccountInfo:TknAccountInfo;
  R:TKNStatus;
begin
  SetObject;

  if KaveNegar1.Active then
    R:=KaveNegar1.GetAccountInformation(knAccountInfo);
  Memo2.Lines.Append(format('Status         : %d',[R.StatusValue]));
  Memo2.Lines.Append(format('Status Message : %s',[R.StatusMsg]));
  Memo2.Lines.Append('=================================');
  Memo2.Lines.Append(format('RemainCredit : %d',[knAccountInfo.Remaincredit]));
  Memo2.Lines.Append(format('Expire Date  : %s',[DateTimetoStr(knAccountInfo.ExpireDate)]));
  Memo2.Lines.Append(format('Account Type : %s',[knAccountInfo.AccountType]));
  Memo2.Lines.Append('=================================');
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  knMessageDataArr:TknMessageDataArr;
  R:TKNStatus;
  I:SmallInt;
begin
  SetObject;

  if KaveNegar1.Active then
    R:=KaveNegar1.Lookup(knMessageDataArr, '123456', '', '', 'myverification');
  Memo2.Lines.Append(format('Status         : %d',[R.StatusValue]));
  Memo2.Lines.Append(format('Status Message : %s',[R.StatusMsg]));
  Memo2.Lines.Append('=================================');
  for I := 0 to Length(knMessageDataArr)-1 do
    begin
      Memo2.Lines.Append(format('Message ID  : %d',[knMessageDataArr[i].MessageID]));
      Memo2.Lines.Append(format('MessageText : %s',[knMessageDataArr[i].MessageText]));
      Memo2.Lines.Append(format('Status      : %d',[knMessageDataArr[i].Status]));
      Memo2.Lines.Append(format('StatusText  : %s',[knMessageDataArr[i].StatusText]));
      Memo2.Lines.Append(format('Sender      : %s',[knMessageDataArr[i].Sender]));
      Memo2.Lines.Append(format('Receptor    : %s',[knMessageDataArr[i].Receptor]));
      Memo2.Lines.Append(format('Date        : %s',[DateTimetoStr(knMessageDataArr[i].Date)]));
      Memo2.Lines.Append(format('Cost        : %d',[knMessageDataArr[i].Cost]));
      Memo2.Lines.Append('---------------------------------');
    end;
  Memo2.Lines.Append('=================================');
end;

procedure TForm1.Edit1Exit(Sender: TObject);
begin
  KaveNegar1.Receptor.Clear;
  KaveNegar1.Receptor:=Edit1.Lines;
end;

procedure TForm1.Edit2Exit(Sender: TObject);
begin
  KaveNegar1.Message.Clear;
  KaveNegar1.Message:=Edit2.Lines;
end;

procedure TForm1.Edit3Exit(Sender: TObject);
begin
  KaveNegar1.SenderNo.Clear;
  KaveNegar1.SenderNo.Add(Edit3.Text);
end;

procedure TForm1.Edit4Exit(Sender: TObject);
begin
  KaveNegar1.APIKey:=Edit4.Text;
end;

end.
