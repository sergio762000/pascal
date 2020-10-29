program pointer_start3;
type
	itemptr = ^item;					{ itemptr - указатель на адрес памяти }
	item = record
		data: integer;
		next: itemptr;
	end;
var
	first: itemptr;						{ переменная first имеет тип - указатель? }

begin
	new(first);							{ указатель на первую область памяти }
	first^.data := 25;					{ заполняем первую ячейку области памяти }
	new(first^.next);					{ указатель на следующую (вторую) область памяти }
	first^.next^.data := 36;			{ заполняем первую ячейку второй области памяти }
	new(first^.next^.next);				{ указатель на следующую (третью) область памяти }
	first^.next^.next^.data := 49;		{ заполняем первую ячейку третьей области памяти }
	first^.next^.next^.next := nil;		{ заполняем вторую ячейку третьей области памяти }
	
	writeln(first^.data);
	writeln(first^.next^.data);
	writeln(first^.next^.next^.data);
end.