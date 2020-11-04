program one_way_list;

type
	Ukazatel = ^S;
	S = record
		Data: integer;
		Next: Ukazatel;
	end;

var
    k: integer;
	Head, {указатель на начало списка}
	x, {вспомогательный указатель для создания очередного элеменат списка}
    y
	: Ukazatel;

begin
    // - Инициализация списка
	new(x); { выделим место в памяти для переменной типа S}
	x^.Data := 3;
	x^.Next := nil;
	Head := x; { устанавливаем указатель головы на первый элемент}
	
    // - Добавление второго элемента
	new(x^.Next); { выделим место в памяти для переменной типа S}
	x := x^.Next;
	x^.Data := 5;
	x^.Next := nil;
    
    // - Добавление третьего элемента
    new(x^.Next);
    x := x^.Next;
    x^.Data := 1;
    x^.Next := nil;
    
    // - Добавление четвертого элемента
    new(x^.Next);
    x := x^.Next;
    x^.Data := 9;
    x^.Next := nil;
	
    writeln('Выводим содержимое .Data в строку');
    y := Head;
    write('List element: ');
    while y^.Next <> nil do
    begin
        k := 1;
        write(y^.Data, ', ');
        k := k + 1;
        y := y^.Next;
        
    end;
    writeln(y^.Data);
end.