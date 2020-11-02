program first_task_pointer;
{
	Написать программу, которая читает целые числа из потока
	стандартного ввода до возникновения ситуации "конец файла",
	после чего печатает все введенные числа в обратном порядке.
	Количество чисел заранее неизвестно, вводить явные ограничения
	на это количество запрещается.
}
type
    ftpptr = ^ftp;
    ftp = record
        data: integer;
        next: ftpptr;
    end;
var
    n: integer;
    {p: ^integer;}
    fcell: ftpptr;
    
begin
    { бесконечный цикл для чтения из потока. Пока не конец потока }
    while not SeekEof do
    begin
        read(n);
        new(fcell);
        fcell^.data := n;
        new (fcell^.next);
        writeln(fcell^.data);
    end;
end.