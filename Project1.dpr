program Project1;

uses
  Forms,
  UMainForm in 'UMainForm.pas' {Form1},
  UTrieNode in 'UTrieNode.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
