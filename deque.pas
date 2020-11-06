program deque;
type
	LongItem2Ptr = ^LongItem2;
	LongItem2 = record
		data: longint;
		prev, next: LongItem2Ptr;
	end;
	
	LongDeque = record
		first, last: LongItem2Ptr;
	end;

procedure LongDequeInit(var deque: LongDeque);
begin
end;

procedure LongDequePushFront(var deque: LongDeque; n: longint);
begin
end;

procedure LongDequePushBack(var deque: LongDeque; n: longint);
begin
end;

function LongDequePopFront(var deque: LongDeque; var n: longint): boolean;
begin
	LongDequePopFront := true;
end;

function LongDequePopBack(var deque: LongDeque; var n: longint): boolean;
begin
	LongDequePopBack := true;
end;

function LongDequeIsEmpty(var deque: LongDeque): boolean;
begin
	LongDequeIsEmpty := true;
end;

begin
end.