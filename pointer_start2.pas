program pointer_start2;
var
	p: ^string;
begin
	new(p);
	p^ := 'This is a string, which resides in the heap' + ' 111';
	
	writeln(p^);
end.