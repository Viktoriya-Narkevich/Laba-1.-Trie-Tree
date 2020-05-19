unit UMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, UTrieTree, Menus;

type
  TForm1 = class(TForm)
    //BFind: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Memo2: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    BBuildTrie: TButton;
    treeView: TTreeView;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BBuildTrieClick(Sender: TObject);
   // procedure BFindClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);


  private
    { Private declarations }
    tree: TTrieTree;
    function getInput: string;
    function popLastWordReversed(var input:string; var output:string):boolean;
    function reverseString(s: string): string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  FName: string;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
   tree:= TTrieTree.Create();
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
   tree.Free;
end;

procedure TForm1.BBuildTrieClick(Sender: TObject);
var input, word: string;
begin
  input:= getInput;
  while popLastWordReversed(input, word) do
    tree.push(word);
  tree.print(treeView);
  
end;

function TForm1.getInput:string;
var i:integer;
begin
  for i:=0 to Memo1.Lines.Count do
      result:= result + ' ' + Memo1.Lines[i];
end;

function TForm1.popLastWordReversed(var input:string; var output:string):boolean;     //true - получилось взять слово. false - не получилось
var i:integer;
begin
i:=length(input);
output:='';
while (i>=1) and (input[i]= ' ') do
  begin
    delete(input,i,1);
    dec(i);
  end;
if input='' then
  result:=false
else
  begin
    while (i>=1) and (input[i]<>' ') do
      begin
        output:=output+input[i];
        delete(input,i,1);
        dec(i);
      end;
    result:=true;
  end;
end;

{procedure TForm1.BFindClick(Sender: TObject);
var res: TStringList;
i:integer;
begin
  Memo2.Clear;
  res:=TStringList.Create;
  tree.findWordsByKey(reverseString(edit1.Text), res);
  for i:=0 to res.Count-1 do
    begin
     Memo2.Lines.Add(ReverseString(res[i]));
    end;
end;  }



procedure TForm1.N2Click(Sender: TObject);
begin
  Memo1.Clear;
  Memo2.Clear;
  OpenDialog1.Filter:='текстовые|*.txt';
  if OpenDialog1.Execute then
    begin
      FName:= OpenDialog1.FileName;
      Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
    end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
   SaveDialog1.FileName:= FName;
   if SaveDialog1.Execute then
   begin
     FName:= SaveDialog1.FileName;
     Memo2.Lines.SaveToFile(FName);
   end;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  ShowMessage('Дан текстовый файл, состоящий из слов, разделенных пробелами.'+#13#10+' Построить Trie-дерево, которое содержитперевернутые слова из файла. '+#13#10+'Найти все слова, имеющие заданное окончание.');
end;

procedure TForm1.N4Click(Sender: TObject);
var value: string;
res: TStringList;
i:integer;
begin
  value:= InputBox('Окончание', 'Введите, пожалуйста, окончание', '');
  Memo2.Clear;
  res:=TStringList.Create;
  tree.findWordsByKey(reverseString(value), res);
  for i:=0 to res.Count-1 do
    begin
     Memo2.Lines.Add(ReverseString(res[i]));
    end;

end;

function TForm1.reverseString(s: string): string;
var
  i: integer;
begin
  Result := '';
  if Trim(s) <> '' then
    for i := Length(s) downto 1 do
      Result := Result + s[i];
end;

end.
