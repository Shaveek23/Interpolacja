%% Interpolacja funkcjami kwadratowymi obszaru D := { (x,y): |x| + |y| <= 1 } funkcji dw�ch zmiennych rzeczywistych z podzia�em na 4n^2 tr�jk�t�w przystaj�cych. 
%% Obliczanie b��du �redniokwadratowego, b��du oraz przyblizanie warto�ci w �rodkach ci�sko�ci tr�jk�t�w.
% mean_sqr_errors - b�ad sredniokwadratowy; interpolation - funkcja
% wykonuj�ca interpolacj� dla n podzia��w dla funkcji funkcja_xy; 
%Wykonanie interpolacji dla n = 1 : k wraz z pomiarem czsu dzia�ania oraz
%wykre�leniem zale�no�ci czasu i b�edu od podzia�u n
%tablicowanie warto�ci w �rodkach ci�ko�ci tr�jk�ta w tablicy  S oraz mean_sqr_errors

%inicjalizacja:
k = 20;
mean_sqr_errors = zeros(1,k);
times = zeros(1,k);

%interpolacja dla n = 1 : k z pomiarem czasu
for i = 1 : k

    tic
    [S,mean_sqr_errors(1,i)] = interpolation(i, @funkcja_xy);
    times(1,i) = toc;
    
end

%wykre�lenie b��du i czasu dla ka�dego n

semilogy([1:1:k], mean_sqr_errors,[1:1:k],times);

legend('Blad sredniokwadratowy', 'Czas dzialania programu');
 xlabel('Wartosc n');
 
 

