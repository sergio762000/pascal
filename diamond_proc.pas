program diamond_proc;

procedure PrintSpaces(count: integer);
var i: integer;
begin
	for i := 1 to count do
		write(' ');
end;

procedure PrintLineOfDiamond(k, n: integer);
begin
	PrintSpaces(n + 1 - k);
	write('*');
	if k > 1 then
	begin
		PrintSpaces(2*k - 3);
		write('*')
	end;
	writeln;
end;

function NegotiateHalfSize: integer;
var
	h: integer;
begin
	repeat
		write('Enter the Diamond''s height (positive odd): ');
		readln(h);
	until (h > 0) and (h mod 2 = 1);
	NegotiateHalfSize := h div 2;
end;

var
	n, k: integer;
begin
	n := NegotiateHalfSize;
	for k := 1 to n + 1 do
		PrintLineOfDiamond(k, n);
	for k := n downto 1 do
		PrintLineOfDiamond(k, n);
end.
