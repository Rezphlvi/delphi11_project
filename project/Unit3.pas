unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm3 = class(TForm)
    e1: TEdit;
    UPDATE: TButton;
    DELETE: TButton;
    DBGrid1: TDBGrid;
    e2: TEdit;
    CARI: TButton;
    NAME: TLabel;
    Label1: TLabel;
    INSERT: TButton;
  procedure INSERTClick(Sender: TObject);
    procedure UPDATEClick(Sender: TObject);
    procedure DELETEClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

{$R *.dfm}

uses Unit4;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
e1.Text := DataModule4.ZQuery1.Fields[1].AsString;
a:= DataModule4.ZQuery1.Fields[0].AsString;
end;

procedure TForm3.DELETEClick(Sender: TObject);
begin
with DataModule4.ZQuery1 do
begin
  SQL.Clear;
  SQL.Add('Delete from kategori where id= "'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from kategori ');
  Open;
end;
ShowMessage('Data Berhasil DiHapus');
end;

procedure TForm3.INSERTClick(Sender: TObject);
begin
DataModule4.ZQuery1.SQL.Clear;
DataModule4.ZQuery1.SQL.Add ('insert into kategori Values(null,"'+e1.Text+'")');
DataModule4.ZQuery1.ExecSQL ;
DataModule4.ZQuery1.SQL.Clear;
DataModule4.ZQuery1.SQL.Add ('select * from kategori');
DataModule4.ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
end;
procedure TForm3.UPDATEClick(Sender: TObject);

begin
with DataModule4.ZQuery1 do
begin
  SQL.Clear;
  SQL.Add('update kategori set name="'+e1.Text+'" where id= "'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from kategori');
  Open;
end;
ShowMessage('Data Berhasil Diupdate');
end;

end.

