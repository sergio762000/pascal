program square;
var
    x: int32;
    y: qword;
    
begin
    read(x);
    y := x*x;
    writeln('Введено = ', x, ', Результат = ', y);
end.