// The power method
clear;clc;close();

nn=input("Enter n value ")

disp("Enter elements for matrix A")
for i=1:nn
    for j=1:nn
        A(i,j)=input("Enter element ")
    end
end
//A=[3 0 1;2 2 2;4 2 5];
disp(A,'The given Matrix is')

//Initial vector
//u0=[1 1 1]';
disp("Enter elements for initial vector")
for i=1:nn
     u0(i)=input("Enter element ")
end
    
disp(u0,'The initial vector is')
v=A*u0;
a=max(u0);
disp(a,'First approximation to eigen value is')
while abs(max(v)-a)>0.002
    disp(v,"current eigen vector is")
    a=max(v);
    disp(a,"current eigen value is")
    u0=v/max(v);
    v=A*u0;
end
format('v',4);
disp(max(v),'The largest Eigen Value is :')
format('v',5)
disp(u0,'The corresponding Eigen Vector is :')
