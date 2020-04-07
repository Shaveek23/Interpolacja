function [M] = net(n)
%Funkcja tworz¹ca podzia³ M obszaru D = { |x| + |y| <= 1 } 
%na 4*n^2 trójk¹tów przystaj¹cych
%   n - liczba naturalna; M - macierz 3*4*n^2 x 2 :
% w tej macierzy ka¿dy z 4n^2 trojk¹tów zajmuje 3 wiersze, w których
% zapisane s¹ wspó³rzêdne x i y jego wierzcho³ka 


%Utworzenie pierwszego kwadratu - najwy¿ej po³o¿onego

%wekotry przesuniec punktu punkt_1 w celu uzyskania pozostalych
wektor_1 = [-1 - 0, 0 - 1] / n;
wektor_2 = [0 - 0, 0 - 1] / (n);
wektor_3 = [1 - 0, 0 - 1] / n;


punkt_1 = [0,1];
punkt_2 = [0,1] + wektor_1;
punkt_3 = [0,1] + wektor_2;
punkt_4 = [0,1] + wektor_3;
punkt_5 = [0,1] + wektor_2 * 2;

%Utworzenie pierwszych 4 trojkatow z najwyzej polozonego kwadratu
M = zeros(3*4, 2);

M(1,:) = punkt_1;
M(2,:) = punkt_2;
M(3,:) = punkt_3;

M(4,:) = punkt_1;
M(5,:) = punkt_4;
M(6,:) = punkt_3;

M(7,:) = punkt_5;
M(8,:) = punkt_2;
M(9,:) = punkt_3;

M(10,:) = punkt_5;
M(11,:) = punkt_4;
M(12,:) = punkt_3;

%Generowanie pierszego (najwyzszego) paska n kwadratow z punktami
M_temp = M;

for i = 1:n-1
M = [M; M_temp + wektor_1*i];
end

M_temp = M;

%Powielanie paska n-1 razy zeby uzyskac cala macierz
for i = 1:n-1
   M = [M; M_temp + wektor_3*i];
end

end

