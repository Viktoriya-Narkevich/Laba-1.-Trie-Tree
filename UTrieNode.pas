unit UTrieNode;

interface
uses Classes, ComCtrls;
type
  TIndex = 'a'..'z';
  TNode = class
            private
              ptrs: array[TIndex] of TNode;
              eow: boolean;
            public
              constructor Create;
              procedure push(s: string);
              procedure print (treeView: TTreeView; parent:TTreeNode);
              procedure findValues (word:string; key:string; var output: TStringList);
              function findByKey (key:string; var output: TStringList):boolean;
              destructor Destroy; override;
           end;

implementation

constructor TNode.Create;
var i: TIndex;
begin
  inherited;
  self.eow:= false;
  for i:=low(TIndex) to high(TIndex) do
    ptrs[i]:=nil;
end;

procedure TNode.print(treeView: TTreeView; parent:TTreeNode);
var i:char;
    newParent:TTreeNode;
begin
  for i:=Low(TIndex) to high(TIndex) do
    if ptrs[i] <> nil then
      begin
        newParent:= treeView.Items.AddChild(parent, i);
        ptrs[i].print(treeView, newParent);
      end;
end;

procedure TNode.findValues (word:string;key:string; var output: TStringList);
var letter:char;
begin
  if eow then
    output.add(key+word);
  for letter:=Low(TIndex) to High(TIndex) do
  if ptrs[letter]<>nil then
    ptrs[letter].findValues(word+letter,key, output);
end;

function TNode.findByKey (key:string; var output: TStringList):boolean;
var ok:boolean;
    i:integer;
    s:string;
begin
  ok:=true;
  i:=1;
  s:='';
  while (i<=length(key)) and ok do
    begin
      if ptrs[key[i]] = nil then
        ok:=false
      else
        self:=self.ptrs[key[i]];
      inc(i);
    end;
  if ok then
    self.findValues(s,key, output);
  result:=ok;
end;

procedure TNode.push (s: string);
begin
  if s = '' then
    eow:= true
  else
    begin
      if ptrs[s[1]] = nil then
        ptrs[s[1]]:= TNode.Create;
      ptrs[s[1]].push(Copy(s,2,Length(s)));
    end;
end;

destructor TNode.Destroy;
var i:TIndex;
begin
  for i:= Low(TIndex) to High(TIndex) do
    ptrs[i].Free;
  inherited;
end;

end.
