program LowerCase;
var
	code, i: integer;
	{c: char;}
	s: string;
begin
	readln(s);
	for i := 1 to 255 do
		code := ord(s[i]);
		write(chr(code + 32));
end.