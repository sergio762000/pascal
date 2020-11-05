program one_way_list_stdin;
{
	Написать программу, которая читает целые числа из потока
	стандартного ввода до возникновения ситуации "конец файла",
	после чего печатает все введенные числа в обратном порядке.
	Количество чисел заранее неизвестно, вводить явные ограничения
	на это количество запрещается.
}
type
    pointp = ^item;				// указатель на item;
    item = record				// item -это record
        data: integer;
        next: pointp;
    end;

var
	a: array of integer;
    i, j, n, k, c: integer;
    head, x, y: pointp;

begin
    head := nil;				// 
    k := 1;
    new(x);
	head := x;

	read(n);				// помещаем введенное значение в переменную
    x^.data := n;			// Заполняем новую запись
    x^.next := nil;			// Заполняем новую запись
	
    writeln('Записываем первое значение списка: ', n);
	
	while not SeekEof do		// Если не Ctrl-D, то
    begin
		read(n);				// Читаем символ со стандартного ввода
        new(x^.next);			// Создаем новый указатель
        x := x^.next;			// Перемещаем х на новое значение
		
		x^.data := n;			// Заполняем новую запись
		x^.next := nil;			// Заполняем новую запись
        k := k + 1;
		writeln('Введено новое значение: ', n);
    end;    
    // - введен символ Ctrl-D
	
	SetLength(a, k + 1);		// Устанавливаем размер массива
	
	y := head;
	c := 1;
	
	while (y^.next) <> nil do
		begin
			a[c] := y^.data;	// Заполняем массив
			y := y^.next;		// Перемещаемся на след указатель
			c := c + 1;			// Увеличиваем 
		end;
	a[c] := y^.data;			// Заполняем последний элемент массива
	
	
    writeln('Выводим содержимое .data в строку - FIFO');
    for i := 1 to 2 do
	begin
		write('List element: ');
		for j := 1 to High(a) do
			if High(a) - j <> 0 then
				write(a[j], ', ')
			else
				writeln(a[j], '.');
	end;
    writeln('Всего элементов - ', k);
	
	writeln('Выводим содержимое .data в строку - LIFO');
	n := 0;
	write('List element: ');
	for i := 1 to High(a) do
		begin
			write(a[High(a) - n]);
			if (High(a) - n) <> 1 then
				write(', ');
			n := n + 1;
		end;
	writeln('.');
	writeln('Всего элементов - ', High(a));
end.