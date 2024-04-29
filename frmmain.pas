unit frmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    imgCurtains: TImage;
    tmrAnimation: TTimer;
    procedure tmrAnimationTimer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  imgNumber: integer;

implementation
{$R *.lfm}

{ TForm1 }



procedure TForm1.tmrAnimationTimer(Sender: TObject);
var
imgName: String;
begin
lblClickAnywhere.Visible :=false;
imgName :='/Users/Cjacobs/Library/CloudStorage/GoogleDrive-26jacchr@students.dlshcch.co.za/My Drive/Computers/Programming/Pascal/Gambler/img/tile';

if (imgNumber= 0) then
begin
imgNumber:=1;
end;

if imgNumber < 10 then
begin
  imgName:=imgName + '00' + Inttostr(imgNumber) + '.png';
end else

if imgNumber < 100 then
begin
  imgName:=imgName + '0' + IntToStr(imgNumber) + '.png';
end else

if imgNumber < 1000 then
begin
  imgName:=imgName + IntToStr(imgNumber) + '.png';
end;
if imgNumber < 156 then
begin
imgCurtains.Picture.LoadFromFile(imgName);
end;
imgNumber:=imgNumber + 1;
end;//End of Animation Timer

end.

