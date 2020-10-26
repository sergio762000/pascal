program MessageN;
const
	message = 'Hello, world!';
	count = 10;
var
	i: integer;
begin
	for i := 1 to count do
		writeln(message);
end.