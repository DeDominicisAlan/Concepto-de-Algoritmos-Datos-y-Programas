//Opcion uno

procedure agregarAtras(var l:lista; n:integer);
var
    aux,act:lista;
begin
    new(aux);
    aux^.dato:=n;
    aux^.sig:=nil;
    if(l <> nil)then
    begin
        act:=l;
        while(act <> nil)do
            act:=act^.sig;
        act^.sig:=aux;
    end
    else
        l:=aux;
end;

//Opcion dos

procedure agregarAtras(var l,ult:lista; n:integer);
var
    aux:lista;
begin
    new(aux);
    aux^.dato:=n;
    aux^.sig:=nil;
    if(l=nil)then
        l:=aux
    else    
        ult^.sig:=aux;
    ult:=aux;
end;