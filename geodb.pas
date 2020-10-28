program geodb;
const
	name = 'geodb.rec';
	count = 99;

type
	NamedPoint = record
		latitude, longitude: real;
		name: string[15];
	end;

var
	f: file of NamedPoint;
	i: integer;
	np: NamedPoint;

begin
	assign(f, name);
	rewrite(f);
	for i := 0 to count do
	begin
		np.latitude := i;
		np.longitude := i;
		np.name := 'geo';
		seek(f, i);
		write(f, np);
	end;
	close(f);
end.