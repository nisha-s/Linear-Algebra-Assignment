// The Gram-Schmidt Orthogonalization
clear;close;clc;
nn=input("Enter n value ")
disp("Enter elements for matrix A")
for i=1:nn
    for j=1:nn
        A(i,j)=input("Enter element ")
    end
end
disp('The given matrix ')
disp(A,'A=');

// A=[1 0 1;1 0 0;2 1 0];
// independent vectors stored in columns of A

[m,n]=size(A);
for k=1:n
    V(:,k)=A(:,k);
    for j=1:k-1
        R(j,k)=V(:,j)'*A(:,k);
            V(:,k)=V(:,k)-R(j,k)*V(:,j);
    end
    R(k,k)=norm(V(:,k));
    V(:,k)=V(:,k)/R(k,k);
end
disp(V,'C=');
