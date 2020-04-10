// Eigen values and Eigen vectors of a given square matrix
clc; close; clear;

nn=input("Enter n value ")

disp("Enter elements for matrix A")
for i=1:nn
    for j=1:nn
        A(i,j)=input("Enter element ")
    end
end
disp('The given matrix ')
disp(A,'A=');

//A=[3,-2,5;-2,3,6;5,6,4]
lam=poly(0,'lam')
lam=lam
charMat=A-lam*eye(nn,nn)
disp(charMat,'The characteristic Matrix is')
charPoly=poly(A,'lam')
disp(charPoly,'the characteristic polynomial is')
lam=spec(A)
disp(lam,'the eigen values of A are')
function[x,lam]=eigenvectors(A)
    [n,m]=size(A);
    lam=spec(A)';
    x=[];
    for k=1:nn
        B=A-lam(k)*eye(nn,nn); // characteristic matrix 
        C=B(1:n-1,1:n-1);    //  coeff matrix for the reuced system 
        b=-B(1:n-1,n);       //  RHS vector for the reduced system
        y=C\b;               //  Solution for the reduced system
        y=[y;1];             //  complete eigen vector
        y=y/norm(y);         // make unit eigen vector
        x=[x y];
    end
endfunction
// End of function
get ('eigenvectors')
[x,lam]=eigenvectors(A)
disp(x,'The eigen vectrs of A are');
