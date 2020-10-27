program MovingHello;
uses crt;
const
	Message = 'Hello, World!';
	
procedure ShowMessage(x, y: integer; msg: string);
begin
	GotoXY(x, y);
	write(msg);
	GotoXY(1, 1);
end;

procedure HideMessage(x, y: integer; msg: string);
var
	len, i: integer;
begin
	len := length(msg);
	GotoXY(x, y);
	for i := 1 to len do
	write(' ');
	GotoXY(1, 1);
end;

procedure MoveMessage(var x, y: integer; msg: string; dx, dy: integer);
begin
	HideMessage(x, y, msg);
	x := x + dx;
	y := y + dy;
	ShowMessage(x, y, msg);
end;

var
	CurX, CurY: integer;
	ch: char;
begin
	clrscr;
	CurX := (ScreenWidth - length(Message)) div 2;
	CurY := ScreenHeight div 2;
	ShowMessage(CurX, CurY, Message);
	while true do
	begin
		ch := ReadKey;
		if ch <> #0 then
			break;
		ch := ReadKey;
		case ch of
			#75: {Стрелка влево}
				MoveMessage(CurX, CurY, Message, -1, 0);
			#77: {Стрелка вправо}
				MoveMessage(CurX, CurY, Message, 1, 0);
			#72: {Стрелка вверх}
				MoveMessage(CurX, CurY, Message, 0, -1);
			#80: {Стрелка вниз}
				MoveMessage(CurX, CurY, Message, 0, 1);
		end
	end;
	clrscr
end.
