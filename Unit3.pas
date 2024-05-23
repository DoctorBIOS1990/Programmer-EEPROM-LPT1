unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, acProgressBar, ExtCtrls, acPNG;

type
  TsplashForm = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    barProgress: TsProgressBar;
    ProgressBar: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  splashForm: TsplashForm;

implementation

uses Unit1;

{$R *.dfm}

procedure TsplashForm.Timer1Timer(Sender: TObject);
begin
Progressbar.Position := Progressbar.Position +10;

if Progressbar.Position = Progressbar.Max  then
  Begin
    (Sender as TTimer).Enabled :=False;
    splashForm.Hide;
    mainForm.Show;
  end;
end;

procedure TsplashForm.FormCreate(Sender: TObject);
  var
    Sem  : THandle;
begin
   Sem := CreateSemaphore(nil,0,1,'SPI Fash 2023 - Doctor BIOS - 3.0');
   if ((Sem <> 0) and (GetLastError = ERROR_ALREADY_EXISTS)) then
      begin
        CloseHandle( Sem );
        Application.MessageBox('Este programa ya se está ejecutando...' ,
       'Doctor BIOS', MB_OK + MB_ICONWARNING);
       Halt;
      end;
end;

end.
