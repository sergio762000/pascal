program one_way_list_stdin;


type
    pointp = ^item;
    item = record
        data: integer;
        next: pointp;
    end;

var
    n, k: integer;
    head, x, y: pointp;

procedure last_input_first_output(n: integer; pp: pointp);
var
    y: pointp;
    arr: array [0..k] of integer;
begin   
end;


begin
    head := nil;
    k := 0;
    new(x);
    while not SeekEof do
    begin
        read(n);
        x^.data := n;
        x^.next := nil;
        if head = nil then
            begin
                head := x;
            end;        
        new(x^.next);
        x := x^.next;
        k := k + 1;
    end;    
    // - введен символ Ctrl-D

    writeln('Выводим содержимое .data в строку - FIFO');
    y := head;
    write('List element: ');
    while y^.next <> nil do
    begin
        write(y^.data, ', ');
        y := y^.next;
    end;
    writeln('');
    writeln('Всего элементов - ', k);
    last_input_first_output(k, head);
    writeln('Всего элементов - ', k);
end.

