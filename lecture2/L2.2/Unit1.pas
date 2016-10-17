unit Unit1;

interface

uses System.SysUtils, Vcl.Forms, Vcl.StdCtrls, Unit2, Vcl.Controls,
    System.Classes;

type
    TForm1 = class(TForm)
        edt1: TEdit;
        btn1: TButton;
        edt2: TEdit;
        edt3: TEdit;
        lbl1: TLabel;
        lbl2: TLabel;
        lbl3: TLabel;
        procedure btn1Click(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.btn1Click(Sender: TObject);
var
    a, b, c: Real;
begin
    a := StrToFloat(edt1.Text);
    b := StrToFloat(edt2.Text);
    c := StrToFloat(edt3.Text);

    mMain(a, b, c);
end;

end.
