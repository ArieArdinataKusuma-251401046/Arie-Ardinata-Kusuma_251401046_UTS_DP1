program AngkaJono;              // Nama : Arie Ardinata Kusuma
uses crt;                       // NIM : 251401046
var                             // UTS Lab 1 Dasar Pemrograman
    i, n, nilai, jumlah: integer;           // Nomor 3
    rata: real;
    
begin
    clrscr;
    jumlah:= 0;
    write('Masukkan jumlah angka (N) : ');
    readln(n);
    
    for i := 1 to n do
        begin
            write('Angka ke-', i, ': ');
            readln(nilai);
            jumlah:= jumlah+nilai;
        end;
    writeln;
    writeln('Jumlah total: ', jumlah);
    
    rata:= jumlah / n;
    
    writeln('Rata-rata : ', rata:0:2);
    readln;
end.