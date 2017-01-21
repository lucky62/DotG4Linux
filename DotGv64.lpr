program DotGv64;

{$MODE Delphi}

uses
  Forms, Interfaces,
  DotgV_064 in 'DotgV_064.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DotG V064';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
