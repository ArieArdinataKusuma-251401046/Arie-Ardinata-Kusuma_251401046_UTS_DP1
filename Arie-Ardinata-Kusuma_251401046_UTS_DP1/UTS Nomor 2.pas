program NilaiPraktikanLAB;
uses crt;
var
    nama, ind : string;
    nilaiakhir, tpl, tpu, i: integer; 
begin
    clrscr;
// Inisialisasi jumlah praktikan lulus dan mengulang
    tpl := 0;
    tpu := 0;

// Ulangi dari 1 sampai 5 untuk setiap praktikan
    for i := 1 to 5 do
    begin
// Input nama praktikan
        write('Nama Praktikan ', i, ': ');
        readln(nama);
// Input nilai akhir praktikan
        write('Nilai Akhir: ');
        readln(nilaiakhir);

// Tentukan indeks nilai berdasarkan nilai akhir
        if (nilaiakhir >= 90) then
            ind := 'A'
        else if (nilaiakhir >= 85) then
            ind := 'B+'
        else if (nilaiakhir >= 75) then
            ind := 'C+'
        else if (nilaiakhir >= 70) then
            ind := 'C'
        else if (nilaiakhir >= 65) then
            ind := 'D'
        else
            ind := 'E';

// Tampilkan (langsung) indeks nilai praktikan
        writeln('Indeks Nilai Praktikan ', i, ': ', ind);
        writeln;

// Hitung jumlah praktikan lulus
        if (ind = 'A') or (ind = 'B+') or (ind = 'C+') or (ind = 'C') then
            tpl := tpl + 1
// Hitung jumlah praktikan mengulang
        else
            tpu := tpu + 1;
    end;

// Tampilkan total praktikan lulus
    writeln('Total Praktikan Lulus: ', tpl);
// Tampilkan total praktikan mengulang
    writeln('Total Praktikan Mengulang: ', tpu);
end.