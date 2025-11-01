program PolaRahasia;                // Nama : Arie Ardinata Kusuma
uses crt;                           // NIM : 251401046
var                                 // UTS Lab 1 Dasar Pemrograman
    i, j, n: integer;               // Nomor 5
begin
    clrscr;
    write('Masukkan nilai n: ');
    readln(n);
    writeln;
    writeln('Alya, inilah pola angka rahasiamu:');

    i := 1;  { inisialisasi awal }
    while i <= n do
    begin
        if i mod 2 = 0 then
        begin
            j := 1;
            while j <= i do
            begin
                write(i, ' (genap) ');
                j := j + 1;
            end;
            writeln;
        end
        else
        begin
            j := 1;
            while j <= i do
            begin
                write(i, ' (ganjil) ');
                j := j + 1;
            end;
            writeln;
        end;

        i := i + 1;
    end;

    readln;
end.
