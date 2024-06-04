unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    FILE1: TMenuItem;
    FILE2: TMenuItem;
    LOGOUT1: TMenuItem;
    LOGOUT2: TMenuItem;
    KATEGORI1: TMenuItem;
    KATEGORI2: TMenuItem;
    SUPPLIER1: TMenuItem;
    SUPPLIER2: TMenuItem;
    RANSAKSI1: TMenuItem;
    RANSAKSI2: TMenuItem;
    PEMBELIAN1: TMenuItem;
    PEMBELIAN2: TMenuItem;
    LAPORANPENJUALAN1: TMenuItem;
    LAPORANPENJUALAN2: TMenuItem;
    BARANG1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FILE2Click(Sender: TObject);
    procedure KATEGORI1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3;
procedure TForm1.FILE2Click(Sender: TObject);
begin
 Form2.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
mm1. Items [1].Visible:=False;
mm1. Items [2].Visible:= False;
mm1. Items [3].Visible:= False;
end;

procedure TForm1.KATEGORI1Click(Sender: TObject);
begin
Form3.Show;
end;

end.
