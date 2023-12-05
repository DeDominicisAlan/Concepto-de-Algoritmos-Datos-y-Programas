procedure InsertarOrdenado(var l:lista; n:integer);
var
	aux:lista;
	ant,act:lista; //Punteros auxiliares
begin
	new(aux);
	aux^.dato:=n;
	ant:=l;	//asigno los punteros al principio
	act:=l;
	while(act <> nil) and (act^.dato < n)do	//Recorro la lista
	begin
		ant:=act;
		act:=act^.sig;
	end;
	if(act=ant)then	//Al principio o lista vacia
		l:=aux	
		else
		ant^.sig:=aux;
	aux^.sig:=act;
end;
