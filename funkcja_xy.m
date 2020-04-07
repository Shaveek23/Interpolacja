function [z] = funkcja_xy(x)
%Przyk³adowa funckja dwóch zmiennych obliczaj¹ca wartoœæ dla punktu
%x=(real_number_1, real_number_2);

%z = exp(x(1)) + exp(x(2));

%z = sin(x(1)) + cos(x(2));

z = 1/(log(abs(x(1) + x(2) )) + 20);

%z = sqrt(abs(x(1)*x(2)) + 1);

%z = x(1)*x(2) + x(1)*x(1)*x(1) + x(2)*x(2)*x(2)+ 1;

 %z = log(sqrt(exp(x(1)*cos(x(1)) - x(2)*sin(x(2)))));
end

