procedure agregarAdelante(var l:lista; n:integer);
var
    aux:lista;
begin 
    new(aux);
    aux^.dato := n;
    aux^.sig := l;
    l := aux;
end;