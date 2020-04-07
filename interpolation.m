function [S,mean_sqr_err] = interpolation(n,fun)
%funckja wywoluj¹ca interpolacje dla kazdego z 4n^2 trójkatow
%   n - liczba trojkatow do wywo³ania, fun - funkcja interpolowana; zwraca
%   tablicowane wartosci oraz obliczony blad sredniokwadratowy
    S = zeros(4*n^2, 3);
    M = net(n);
    j=1;
    for i = 1:3:(3*4*n^2)

       [p, s, t] = interp_pkt( M(i,:), M(i+1,:), M(i+2,:), fun);
       S(j,1) = p;
       S(j,2) = s;
       S(j,3) = t;
        j=j+1;

    end
    mean_sqr_err = err(S,n);
end

