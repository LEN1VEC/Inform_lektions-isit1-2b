unit Unit1;

interface

uses System.SysUtils, Vcl.Forms, Vcl.StdCtrls, Unit2, Vcl.Controls,
    System.Classes;

type
    TForm1 = class(TForm)
        edt1: TEdit;
        btn1: TButton;
        edt2: TEdit;
        lbl1: TLabel;
        lbl2: TLabel;
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
    s, t: Real;
begin
    s := StrToFloat(edt1.Text);
    t := StrToFloat(edt2.Text);

    mMain(s, t);
end;

end.
