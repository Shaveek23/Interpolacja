function x = GEPP(A,b)
%funkcja rozwi¹zuj¹ca uk³ad równañ metod¹ GEPP; A - macierz n x n; b -
%wektor wyrazów wolnych 1 x n
[n, ~] = size(b);

A = [A b];

for k=1:n-1
    [~, i]=max(abs(A([k:1:n],k))); % v - najwieksza wartosc; i - indeks wiersza najwiekszej wartosci, ale zaczynajac od k
    A([i+k-1 k],:) = A([k i+k-1],:); % zamiana wierszy i <-> k
    A([k+1:n],:) = A([k+1:n], :) - (A([k+1:n],k)./A(k,k))*A(k,:); % zerowanie za pomoca wiersza k
    
end


b =A(:,n+1);
A = A([1:1:n], [1:1:n]);


x = obl_x(A, b);

end