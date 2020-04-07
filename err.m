function [mean_sqr_err] = err(S,n)
%Funkcja oblicza mean_sqr_error - blad sredniokwadratowy dla wartosci
%b³edow w srodkach ciezkosci trojkatow dla danego n 
%S - tablicowane wartosci bledow, n - liczba podzia³ow
    mean_sqr_err = S(:,3);
    mean_sqr_err=mean_sqr_err.^2;
    mean_sqr_err= sum(mean_sqr_err) / (4*n^2);

end

