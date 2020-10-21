program star_slash;
var
	i, n: integer;
begin
	for i := 1 to 24 do
	begin
		for n := 1 to i-1 do
			write(' ');
		writeln('*');
	end
end.