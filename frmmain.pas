unit frmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    imgCurtains: TImage;
  private

  public

  end;

var
  Form1: TForm1;
  imgName: String;
  imgNumber: integer;

implementation
{$R *.lfm}
initialization
procedure InitializeForm
begin
imgCurtains.Picture.LoadFromFile(./img/tile000.png0 ;
end;
begin
  initilizeForm
end.

