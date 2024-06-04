unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    e1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation



{$R *.dfm}

uses Unit1;
procedure TForm2.Button1Click(Sender: TObject);
begin
  if e1.Text = 'admin' then
  begin
    Form1.mm1.Items[1].Visible := True;
    Form1.mm1.Items[2].Visible := False;
    Form1.mm1.Items[3].Visible := False;
  end
  else if e1.Text = 'kasir' then
  begin
    Form1.mm1.Items[1].Visible := False;
    Form1.mm1.Items[2].Visible := True;
    Form1.mm1.Items[3].Visible := False;
  end
  else if e1.Text = 'pemilik' then
  begin
    Form1.mm1.Items[1].Visible := False;
    Form1.mm1.Items[2].Visible := False;
    Form1.mm1.Items[3].Visible := True;
  end else
  begin
end;
Form2.Close;
end;
end.
