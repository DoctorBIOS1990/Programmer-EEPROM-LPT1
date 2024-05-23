program Programador;

uses
  Forms,
  Unit1 in 'Unit1.pas' {mainForm},
  Unit2 in 'Unit2.pas' {diagramForm},
  Unit3 in 'Unit3.pas' {splashForm};

{$R *.res}

begin

  Application.Initialize;
  Application.Title := 'SPI Fash 2023 - Doctor BIOS - 3.0';
  Application.CreateForm(TsplashForm, splashForm);
  Application.CreateForm(TmainForm, mainForm);
  Application.CreateForm(TdiagramForm, diagramForm);
  Application.Run;
end.
