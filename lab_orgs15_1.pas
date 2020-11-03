program lab_orgs15_1;
var
	n, k: integer;
	pI: ^integer;
begin
	n := 4;
	new(pI);
	pI^ := n;
	writeln('Адрес n = ', pI);
	writeln('n = ', pI^);
end.