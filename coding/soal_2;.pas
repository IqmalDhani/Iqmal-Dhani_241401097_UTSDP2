program soal_2;
uses crt;

var
  n, i, angka, total: integer;
  rata2: real;

begin
  clrscr;
  
    write('N : ');
    readln(n);
  
    total := 0;

    for i := 1 to n do
    begin
        write('Angka ke-', i, ': ');
        readln(angka);
        total := total + angka;
    end;
    
    rata2 := total / n;
  
    writeln;
    writeln('Jumlah Total : ', total);
     writeln('Rata - rata : ', rata2:0:1);
  
  readln;
end.