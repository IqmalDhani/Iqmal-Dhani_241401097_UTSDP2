program soal_4;
uses crt;
var
  n, x, i, j: integer;
  Prima: boolean;
  
begin
  clrscr;
 
  write('n = ');
  readln(n);
  
  writeln('Bilangan prima antara 1 dan ', n, ' adalah: ');
  
  x := 0;
  
  for i := 2 to n do
  begin
    Prima := true;
    
    for j := 2 to i div 2 do
    begin
      if (i mod j = 0) then
      begin
        Prima := false;
        break;
      end;
    end;
    
    if Prima then
    begin
      if x > 0 then
        write(', ');
      write(i);
      x := x+1;
    end;
  end;
  
  writeln;
  readln;
end.