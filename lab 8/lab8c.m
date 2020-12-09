%Jorie Noll
%CSC 2262
%Lab 8c

global accuracy;
a = 2;
b = 4;
accuracy = 1e-4;
g = @(x) ((x-2)^4 + 3*x + 12)/(x+4);
h = @(x) 9 - sqrt(1 + (x-2)^3);
v = @(y,x) 8;
w = @(y,x) x + y + 2;
f = @(z,y,x) z.^3.*cos(x+y+z)./(2*x+3*z+2) + z.^2.*log(y*sqrt(z+y^3));
mass = quad('middle' ,a,b,accuracy,[],'inner' ,g,h,f,v,w); %#ok<DQUAD>
fprintf('mass=%.3f \n', mass);
