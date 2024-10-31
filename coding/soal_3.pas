program soal_3;
uses crt;

  var
    a, i, j: integer;
    biner: string;

begin
clrscr;

    write('Tinggi segitiga : ');
    readln(a);
  
    for i := 1 to a do
    begin
      biner := '';
      for j := 1 to i do
      begin
        if j mod 2 = 1 then
        biner := biner + '1'
      else
        biner := biner + '0';
    end;
    
    for j := 1 to length(biner) do
      write(biner[j], ' ');
    writeln;
  end;


  readln;
end.