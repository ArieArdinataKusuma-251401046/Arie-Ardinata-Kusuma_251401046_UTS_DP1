program BilanganPrima;          // Nama : Arie Ardinata Kusuma
uses crt;                       // NIM : 251401046
                                // UTS Lab 1 Dasar Pemrograman
var                             // Nomor 4
   i, j, n : integer;
   prime : boolean;
begin
    clrscr;
    write ('Masukkan nilai n : ');
    readln(n);
    write('bilangan prima antara 1 dan ', n,' adalah : ');
    
    for i := 2 to n do 
    begin
            prime:= true;
        for j:= 2 to i - 1 do
            begin
                if (i mod j = 0) then
                    begin
                        prime := false;
                        break;
                    end;
            end;
            
    if prime then 
    write(i, ' ');
    
    end;
    readln;
end.