// Projection by least squares
clear;close;
clc;
n=3
disp("Enter elements for matrix A")
for i=1:n
    for j=1:n-1
        A(i,j)=input("Enter element ")
    end
end
disp('The given matrix ')
//A=[1 0;0 1;1 1];
disp(A,'A=');

disp("Enter elements for matrix b")
for i=1:n
    for j=1:1
        b(i,j)=input("Enter element ")
    end
end
disp('The given matrix ')
//B=[1;1;0];
disp(b,'b=');


x = (A'*A)\(A'*b);
disp(x, 'x=');
C = x(1,1);
D = x(2,1);
disp(C, 'C=');
disp(D, 'D=');
disp('The line of best fit is b=C + Dt');


