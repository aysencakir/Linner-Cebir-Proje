clc %ekranı temizlemek için clc kullanıyoruz

n=input("4 e eşit veya büyük bir sayı giriniz");%kullanıcıdan 4'e eşit veya 
%büyük bir sayı girmesini istiyoruz

if n < 4%sayı 4'den küçük mü diye kontrol ediyoruz
    while n < 4%sayı 4'den küçük olduğu sürece döngü devam ediyor
        disp("n 4'e eşit veya büyük olmalıdır!Tekrar giriniz");%sayının 4 eşit
        %veya büyük olması gerektiği uyarsını veriyoruz
        n=input("4'e eşit veya büyük bir sayı giriniz");%tekrar bir sayı girişi
        %alıyoruz
    end%while döngüsünü kapatıyoruz
end%if i kapatıyoruz

m=input("n değerinden büyük bir sayı giriniz");%kullanıcıdan n değerinden büyük
%bir sayı girmesini istiyoruz

if m < n%sayı n den küçük mü diye kontrol ediyoruz
    while m <= n %sayı n'den küçük veya eşit olduğu sürece döngü devam ediyor
        disp("m, n değerinden büyük olmalıdır!Tekrar giriniz")%sayının n'den
        %büyük olması gerektiği uyarsını veriyoruz
        m=input("n değerinden büyük bir sayı giriniz");%tekrar bir sayı girişi
        %alıyoruz
    end%while döngüsünü kapatıyoruz
end%if'i kapatıyoruz

A=9-18*rand(m,n);%A matrisi içine [-9,9] arası rastgele sayılar atıyoruz


tamA=round(A);%A matrisi içindeki değerleri en yakın sayıya yuvarlıyoruz


determinant=det(tamA'*tamA);%matrisinin sözde tersinin olması için transpozesi
%ile çarpımının determinantının 0 olmaması gerekir

while determinant==0 || determinant<0.0000001 %determinant 0'a eşit veya yakın olduğu sürece döngü devam ediyor 
    %kontrol aşamaları
    g=round(1+(m-1)*rand());%g'nin içine 1 ile m arası rastgele bir
    %tam sayı atıyoruz
    h=round(1+(n-1)*rand());%h'nin içine 1 ile n arası rastgele bir
    %tam sayı atıyoruz
    if tamA(g,h)==-9%tamA(g,h) değeri -9'a eşit mi kontrol ediyoruz
    tamA(g,h)=tamA(g,h)+1;%tamA(g,h) değeri -9'a eşitse onun yerine 1 fazlasını 
    % yazıyoruz 1 eksiğini yazsaydık 2 haneli olurdu
    else
    tamA(g,h)=tamA(g,h)-1;%-9 dışındaki bütün değerlerin 1 eksiğini alarak
    %en yakın çift veya tek sayısı buluyoruz
    end
    determinant=det(tamA'*tamA);%tekrar determinant hesaplatıyoruz
end

%pseudo-inverse formülü uygulanışı
B=tamA.'*tamA;%B'nin içine tamA matrisimizin transpozesi ile kendisinin 
%çarpımını atıyoruz
psi=inv(B)*tamA.';%psi içine B'nin tersi ile tamA matrsinin çarpımını atıyoruz


kontrol=pinv(tamA);%pinv komutu ile bulunan matrisi kontrole atıyoruz

%A matrisimizi command windowa yazdırıyoruz
A
%tamA matrisimizi command windowa yazdırıyoruz
tamA
%bulduğumuz değerler aynı mı diye bakmak için command windowa yazdırıyoruz
psi
kontrol
















