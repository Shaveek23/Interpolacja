function x = GE(A,b)

[n o] = size(b);

x=zeros(n,1);
x(n) = b(n)./A(n,n);

for k=n-1:-1:1
    a = A(k,:)'.*x;
    a = sum(a);
    x(k) = (b(k) - a)/(A(k,k));
end
% for k=n-1:-1:1
%     a=0
%     for j=k+1:n
%         a = a + A(k,j)*x(j)
%     end
%     x(k) = (b(k)-a)/A(k,k)
% end

% for i=n:-1:1
%     x(i) = b(i) / A(i,i);
%     for j=1:i
%         b(j) = b(j) - x(i)*A(j,i);
%     end
% end

end