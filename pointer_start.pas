program pointer_start;
var
	p: ^real; { указатель на переменную типа real }
	r: real; { переменная типа real }
begin
	p := @r;		{ Заносим в p адрес r }
	p^ := 25.7;		{ Заносим в ячейку с адресом p значение }
	writeln(p^);	{ Печатаем значение из ячейки с адресом p }
	writeln(r);		{ Печатаем значение переменной r }
end.