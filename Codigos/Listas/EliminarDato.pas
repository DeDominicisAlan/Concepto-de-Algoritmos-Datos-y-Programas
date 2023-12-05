procedure Eliminar(var l:lista; n:integer;var exito:boolean);
var
	ant,act:lista; //Punteros auxiliares
begin
	exito := false;
	act := l;
	while(act <> nil) and (act^.dato <> n)do	//Recorro la lista
	begin
		ant: = act;
		act: = act^.sig;
	end;
	if(act <> nil)then	//Si la lista no esta vacia
	begin
		exito := true;
		if(act = l)then //Si el elemento es el primero
			l := act^.sig;	
		else
			ant^.sig := act^.sig;
		dispose(act);
	end;
end;
