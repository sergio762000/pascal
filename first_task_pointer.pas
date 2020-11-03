program first_task_pointer;
{
	Написать программу, которая читает целые числа из потока
	стандартного ввода до возникновения ситуации "конец файла",
	после чего печатает все введенные числа в обратном порядке.
	Количество чисел заранее неизвестно, вводить явные ограничения
	на это количество запрещается.
}
type
	pItem = ^item;
    item = record
		data: integer;
		next: pItem;
	end;

function CreateNode(n: integer; var Head: pItem): Head;
begin
	writeln(n);
	writeln('*-----------*');
	Head^.data := n;
	Head^.next := nil;
end;


var
	n: integer;
	Head, newP: pItem;

begin
   while not SeekEof do
   begin
   		read(n);
		new(Head);
		Head := CreateNode(n, Head);
		new(newP);
		newP^.data := n;
		newP^.next := nil;
   end;
end.