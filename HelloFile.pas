program HelloFile;
const
	message = 'Hello, world!';
	filename = 'hello.txt';
var
	f: text;
begin
	{$I-}
	assign(f, filename);
	rewrite(f);
	if IOResult <> 0 then
	begin
		writeln('Don''t open file ', filename);
		halt(1);
	end;
	writeln(f, message);
	if IOResult <> 0 then
	begin
		writeln('Don''t write to the file ', filename);
		halt(1);
	end;
	close(f)
end.