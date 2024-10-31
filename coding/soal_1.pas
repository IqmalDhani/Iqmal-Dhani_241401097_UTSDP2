program soal_1;
uses crt;
var
    nama, hari: string;
    jumlahBarang, Poin, kodeProduk, banyak: integer;
    totalBelanja, hargaAkhir: real;
    lanjut: char;
    Member: boolean;

begin
  clrscr;
  
    jumlahBarang := 0;
    totalBelanja := 0;
  

  writeln('-----Selamat Datang di AHY Mart-----');
  writeln;
  

  write('Nama Anggota: '); readln(nama);
  write('Hari: '); readln(hari);
  

  if nama = '-' then
    Member := false
  else
    Member := true;
    
 
  writeln;
  writeln('========= DAFTAR PRODUK AHY MART =========');
  writeln('-------- Produk Hygiene (Senin disc. 10%) --------');
  writeln('1. Sabun            : Rp7.000');
  writeln('2. Pasta Gigi       : Rp16.000');
  writeln('3. Sikat Gigi       : Rp8.000');
  writeln;
  writeln('------ Frozen Food (Selasa disc. 5%) ------');
  writeln('4. Nugget Ayam      : Rp45.000');
  writeln('5. Es krim          : Rp20.000');
  writeln('6. Sosis Beku       : Rp35.000');
  writeln;
  writeln('----- Elektronik (Rabu disc. 30%) -----');
  writeln('7. Baterai          : Rp15.000');
  writeln('8. Lampu LED        : Rp25.000');
  writeln('9. Kabel USB        : Rp20.000');
  writeln;
  writeln('------ Laktosa (Kamis disc. 8%) ------');
  writeln('10. Susu UHT        : Rp18.000');
  writeln('11. Yogurt          : Rp22.000');
  writeln('12. Keju Slice      : Rp15.000');
  writeln('=======================================');
  

  repeat
    write('Masukkan kode produk (1-12): '); readln(kodeProduk);
    write('Masukkan jumlah pembelian  : '); readln(banyak);
    

    case kodeProduk of

      1..3: begin
             if hari = 'Senin' then
               case kodeProduk of
                 1: totalBelanja := totalBelanja + (7000 * 0.9 * banyak);
                 2: totalBelanja := totalBelanja + (16000 * 0.9 * banyak);
                 3: totalBelanja := totalBelanja + (8000 * 0.9 * banyak);
               end
             else
               case kodeProduk of
                 1: totalBelanja := totalBelanja + (7000 * banyak);
                 2: totalBelanja := totalBelanja + (16000 * banyak);
                 3: totalBelanja := totalBelanja + (8000 * banyak);
               end;
           end;
      

      4..6: begin
             if hari = 'Selasa' then
               case kodeProduk of
                 4: totalBelanja := totalBelanja + (45000 * 0.95 * banyak);
                 5: totalBelanja := totalBelanja + (20000 * 0.95 * banyak);
                 6: totalBelanja := totalBelanja + (35000 * 0.95 * banyak);
               end
             else
               case kodeProduk of
                 4: totalBelanja := totalBelanja + (45000 * banyak);
                 5: totalBelanja := totalBelanja + (20000 * banyak);
                 6: totalBelanja := totalBelanja + (35000 * banyak);
               end;
           end;
      

      7..9: begin
             if hari = 'Rabu' then
               case kodeProduk of
                 7: totalBelanja := totalBelanja + (15000 * 0.7 * banyak);
                 8: totalBelanja := totalBelanja + (25000 * 0.7 * banyak);
                 9: totalBelanja := totalBelanja + (20000 * 0.7 * banyak);
               end
             else
               case kodeProduk of
                 7: totalBelanja := totalBelanja + (15000 * banyak);
                 8: totalBelanja := totalBelanja + (25000 * banyak);
                 9: totalBelanja := totalBelanja + (20000 * banyak);
               end;
           end;
      

      10..12: begin
             if hari = 'Kamis' then
               case kodeProduk of
                 10: totalBelanja := totalBelanja + (18000 * 0.92 * banyak);
                 11: totalBelanja := totalBelanja + (22000 * 0.92 * banyak);
                 12: totalBelanja := totalBelanja + (15000 * 0.92 * banyak);
               end
             else
               case kodeProduk of
                 10: totalBelanja := totalBelanja + (18000 * banyak);
                 11: totalBelanja := totalBelanja + (22000 * banyak);
                 12: totalBelanja := totalBelanja + (15000 * banyak);
               end;
           end;
    end;
    
    jumlahBarang := jumlahBarang + banyak;
    
    write('Lanjut belanja? (Y/T): '); readln(lanjut);
    writeln;
    
  until UpCase(lanjut) = 'T';
  

  writeln('Total: Rp', totalBelanja:0:0);
  

  if (Member) and (jumlahBarang >= 10) then
    begin
      writeln('Diskon: 10% + 5% = 15%');
      hargaAkhir := totalBelanja * 0.85;
    end
  else if Member then
    begin
      writeln('Diskon: 10%');
      hargaAkhir := totalBelanja * 0.90;
    end
  else if jumlahBarang >= 10 then
    begin
      writeln('Diskon: 5%');
      hargaAkhir := totalBelanja * 0.95;
    end
  else
    hargaAkhir := totalBelanja;
    

  Poin := Trunc(hargaAkhir) div 50000;
  
  writeln('Pembayaran: Rp', hargaAkhir:0:0);
  writeln('Poin: ', Poin);
  

  if Poin >= 50 then
    writeln('Selamat! Anda mendapatkan voucher diskon 20%');
    
  readln;
end.