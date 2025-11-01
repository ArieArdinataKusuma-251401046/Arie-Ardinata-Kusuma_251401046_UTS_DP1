program PerusahaanRentalMobil;              // Nama : Arie Ardinata Kusuma
uses crt;                                   // NIM : 251401046
var                                         // UTS LAB 1 Dasar Pemrograman
    km, hari: integer;
    hjm, biayaKM: longint;
    jm: string; 
    
begin   // Inputan Pemesanan
    clrscr;
    writeln('--- PERUSAHAAN RENTAL MOBIL---');
    write('Masukkan jenis mobil (Ekonomi/Sedan/SUV : ');
    readln(jm);
    
    write('Pemesanan berapa hari : ');
    readln(hari);
    
    write('Berkendara seberapa jauh (KM) : ');
    readln(km);
    
    if (jm = 'Ekonomi') OR (jm = 'ekonomi') then
        hjm := 300000 * hari
        
    else if (jm = 'Sedan') OR (jm = 'sedan') then
        hjm := 400000 * hari
        
    else if (jm = 'SUV') OR (jm = 'suv') then
        hjm := 500000 * hari
        
    else
    begin
        writeln('Jenis mobil tidak dikenal.');
        readln;
        halt;
    end;
    
    if km <= 100 then
        biayaKM := km * 1500
    else if km <= 200 then
        biayaKM := (100 * 1500) + ((km - 100) * 1000)
    else
        biayaKM := (100 * 1500) + (100 * 1000) + ((km - 200) * 500);
    
    // Harga akhir
    clrscr;
    writeln('');
    writeln('--- BIAYA AKHIR RENTAL MOBIL ---');
    writeln('Mobil yang dipilih : ', jm);
    writeln('Lama durasi rental : ', hari, ' hari');
    writeln('Jauh berkendara : ', km, ' KM');
    writeln('');
    writeln('Biaya jenis mobil : ', hjm);
    writeln('Biaya kilometer : ', biayaKM);
    writeln('Harga yang harus dibayar : ', hjm + biayaKM);
    readln;
    
end.