unit unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  x1, y1, x2, y2: Real;
  d, a, S, P: Real;
begin
  x1 := StrToFloat(Edit1.Text);
  y1 := StrToFloat(Edit2.Text);
  x2 := StrToFloat(Edit3.Text);
  y2 := StrToFloat(Edit4.Text);

  d := sqrt(sqr(x2 - x1) + sqr(y2 - y1));
  a := d / sqrt(2);

  S := a * a;
  P := 4 * a;

  Edit5.Text := FloatToStr(S);
  Edit6.Text := FloatToStr(P);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit1.SetFocus;
end;

end.

