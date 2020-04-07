function [f_center_real, f_center_approx, diff] = interp_pkt(a,b,c,fun)
%Funkcja wykonuj¹ca interpolacjê kwadratow¹ na trojk¹cie abc dla funkcji
%fun; Zwraca wart rzecywista funkcji, wartosc interpolacji oraz blad

%Obliczanie wspolrzednych srodkow trojkata abc:
s_ab =  [ (a(1) + b(1) )/2, (a(2) + b(2) )/2 ];
s_ac = [ (a(1) + c(1) )/2, (a(2) + c(2) )/2 ];
s_bc = [  (b(1) + c(1) )/2, (b(2) + c(2) )/2 ];

com = [ (a(1) + b(1) + c(1) )/ 3, (a(2) + b(2) + c(2))/3]; %center_of_mass

f_a = fun(a);
f_b = fun(b);
f_c = fun(c);
f_ab = fun(s_ab);
f_ac = fun(s_ac);
f_bc = fun(s_bc);
f_center_real = fun(com);

%Znalezienie wspolczynnikow d1 + d2x + d3y + d4x^2 + d5y^2 + d6xy
A = [
    1, a, a.^2, a(1)*a(2);
    1, b, b.^2, b(1)*b(2);
    1, c, c.^2, c(1)*c(2);
    1, s_ab, s_ab.^2, s_ab(1)*s_ab(2)
    1, s_ac, s_ac.^2, s_ac(1)*s_ac(2)
    1, s_bc, s_bc.^2, s_bc(1)*s_bc(2)
    ];
f = [f_a; f_b; f_c; f_ab; f_ac; f_bc];

w = GEPP(A,f);

%Wyliczanie wartosci funkcji interpoluj¹cej dla srodka ciezkosci trojkata
f_center_approx = w(1) + w(2)*com(1) + w(3)*com(2) + w(4)*com(1)^2 + w(5)*com(2)^2 + w(6)*com(1)*com(2);

%Obliczanie bledu
diff = abs( f_center_real - f_center_approx);

end

