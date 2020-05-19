unit UTrieTree;

interface

uses UTrieNode, Classes, ComCtrls;

type TTrieTree = class
                    private
                      root: TNode;
                    public
                      constructor Create;
                      procedure push (s:string);
                      function findWordsByKey (key:string; var output: TStringList):boolean;
                      procedure print(treeView:TTreeView);
                      destructor Destroy; override;
                 end;

implementation

constructor TTrieTree.Create;
begin
  inherited;
  root:= TNode.Create;
end;

procedure TTrieTree.push(s:string);
begin
  if s <> '' then
    root.push(s);
end;

procedure TTrieTree.print(treeView: TTreeView);
begin
  treeView.Items.Clear;
  root.print(treeView, nil);
end;

function TTrieTree.findWordsByKey (key:string; var output: TStringList):boolean;
begin
  result:=root.findByKey(key, output);
end;

destructor TTrieTree.Destroy;
begin
  root.Free;
  inherited;
end;

end.
