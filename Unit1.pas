(* 8 Queens puzzle by ORIK KHIRO LAZAREF , DZ.inventors Team , dz.inventors@gmail.com
  End Edit : 00:34 10/09/2017
  kheireddine lazaref , algeria
*)
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button3: TButton;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button3Click(Sender: TObject);
var
  i, j, a: Integer;
begin
  a := 0;
  for i := 0 to 8 do
  begin
    Canvas.MoveTo(a, 0);
    Canvas.LineTo(a, 400);
    a := a + 50;
  end;

  a := 0;

  for j := 0 to 8 do
  begin
    Canvas.MoveTo(0, a);
    Canvas.LineTo(400, a);
    a := a + 50;
  end;

end;

procedure TForm2.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i, j, a, b, l, m, n: Integer;
  c: TColor;
begin
  n := 25;
  if X < 50 then
    l := 25
  else if X < 100 then
    l := n * 3
  else if X < 150 then
    l := n * 5
  else if X < 200 then
    l := n * 7
  else if X < 250 then
    l := n * 9
  else if X < 300 then
    l := n * 11
  else if X < 350 then
    l := n * 13
  else if X < 400 then
    l := n * 15;
  // else if x<450 then  l:= n*17 ;//else if x<500 then  l:= n*19 else if x<550 then  l:= n*19 ;
  if Y < 50 then
    m := 25
  else if Y < 100 then
    m := n * 3
  else if Y < 150 then
    m := n * 5
  else if Y < 200 then
    m := n * 7
  else if Y < 250 then
    m := n * 9
  else if Y < 300 then
    m := n * 11
  else if Y < 350 then
    m := n * 13
  else if Y < 400 then
    m := n * 15;

  a := X;
  b := Y;
  if Canvas.Pixels[a, b] = clBlack then
    c := clWhite
  else
    c := clBlack;

  for i := 2 to 48 do
    for j := 2 to 48 do
    begin
      Canvas.MoveTo(l, Y - 25);
      Canvas.Pixels[l + i - 25, m + j - 25] := c;
    end;
end;

procedure TForm2.FormPaint(Sender: TObject);
begin
  Button3.Click;
end;

end.
