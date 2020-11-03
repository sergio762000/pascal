program one_way_list;

type
	Ukazatel = ^S;
	S = record
		Data: integer;
		Next: Ukazatel;
	end;

var
	Head, {указатель на начало списка}
	x {вспомогательный указатель для создания очередного элеменат списка}
	: Ukazatel;

begin
	new(x); { выделим место в пмяти для переменной типа S}
	x^.Data := 3;
	x^.Next := nil;
	Head := x; { устанавливаем указатель головы на первый элемент}
	
	new(x^.Next);
	x := x^.Next;
	x^.Data := 5;
	x^.Next := nil;
	
	writeln('Head.Data = ', Head^.Data);
	writeln('Head.Next.Data = ', Head^.Next^.Data);
end.