program DotGv64;

uses
  Forms,
  DotgV_064 in 'DotgV_064.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'DotG V064';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
