unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonTitik: TButton;
    ButtonGaris1: TButton;
    ButtonGaris2: TButton;
    ButtonRectangle: TButton;
    ButtonRoundtect: TButton;
    ButtonEllipse: TButton;
    ButtonEllipse2: TButton;
    ButtonKotak: TButton;
    ButtonHapus: TButton;
    Label1: TLabel;
    procedure ButtonEllipse2Click(Sender: TObject);
    procedure ButtonEllipseClick(Sender: TObject);
    procedure ButtonGaris1Click(Sender: TObject);
    procedure ButtonGaris2Click(Sender: TObject);
    procedure ButtonHapusClick(Sender: TObject);
    procedure ButtonKotakClick(Sender: TObject);
    procedure ButtonRectangleClick(Sender: TObject);
    procedure ButtonRoundtectClick(Sender: TObject);
    procedure ButtonTitikClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var w : TColor;
begin
    Label1.Caption := 'x = ' + IntToStr(x) + ' y = ' +
IntToStr(y);
    w := 5478;
    Canvas.Pixels[x,y] := Random(w);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.ButtonTitikClick(Sender: TObject);
begin
  Canvas.Pixels[80,100] := clRed;
end;

procedure TForm1.ButtonGaris1Click(Sender: TObject);
var a,b : integer;
begin
      b:= 0;
      for a := 0 to 100 do
      begin
            Canvas.Pixels[a,b] := clred;
            b:= b+1;
      end;
end;

procedure TForm1.ButtonEllipseClick(Sender: TObject);
begin
  Canvas.Ellipse(145,150,255,268);
end;

procedure TForm1.ButtonEllipse2Click(Sender: TObject);
begin
  Canvas.Ellipse(0,0,Width,Height);
end;

procedure TForm1.ButtonGaris2Click(Sender: TObject);
begin
  Canvas.MoveTo(130,120);
  Canvas.LineTo(130,240);
end;

procedure TForm1.ButtonHapusClick(Sender: TObject);
begin
  Invalidate;
end;

procedure TForm1.ButtonKotakClick(Sender: TObject);
begin
  Canvas.Rectangle(round(Width/3),round(Height/3),+
  round(Width*2/3),round(Height*2/3));
end;

procedure TForm1.ButtonRectangleClick(Sender: TObject);
begin
  Canvas.Pen.Color := clMaroon;
  Canvas.pen.Width := 3;
  Canvas.Brush.Color := clYellow;
  Canvas.Brush.Style := bsVertical;
  Canvas.Rectangle(120,150,340,260);
end;

procedure TForm1.ButtonRoundtectClick(Sender: TObject);
begin
  Canvas.RoundRect(120,150,340,260,55,55);
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var w : TColor;
begin
  Label1.Caption := 'x = ' + IntToStr(x) + ' y = ' +
IntToStr(y);
            w := 5478;
            Canvas.Pixels[x,y] := Random(w);
end;

end.

