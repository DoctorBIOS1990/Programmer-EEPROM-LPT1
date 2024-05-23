unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, acPNG, ExtCtrls, acTitleBar;

type
  TdiagramForm = class(TForm)
    Image1: TImage;
    Image2: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  diagramForm: TdiagramForm;

implementation

{$R *.dfm}

end.
