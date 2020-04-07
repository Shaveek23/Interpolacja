%% Interpolacja funkcjami kwadratowymi obszaru D := { (x,y): |x| + |y| <= 1 } funkcji dwóch zmiennych rzeczywistych z podzia³em na 4n^2 trójk¹tów przystaj¹cych. 
%% Obliczanie b³êdu œredniokwadratowego, b³êdu oraz przyblizanie wartoœci w œrodkach ciê¿skoœci trójk¹tów.
% mean_sqr_errors - b³ad sredniokwadratowy; interpolation - funkcja
% wykonuj¹ca interpolacjê dla n podzia³ów dla funkcji funkcja_xy; 
%Wykonanie interpolacji dla n = 1 : k wraz z pomiarem czsu dzia³ania oraz
%wykreœleniem zale¿noœci czasu i b³edu od podzia³u n
%tablicowanie wartoœci w œrodkach ciê¿koœci trójk¹ta w tablicy  S oraz mean_sqr_errors

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

%wykreœlenie b³êdu i czasu dla ka¿dego n

semilogy([1:1:k], mean_sqr_errors,[1:1:k],times);

legend('Blad sredniokwadratowy', 'Czas dzialania programu');
 xlabel('Wartosc n');
 
 

