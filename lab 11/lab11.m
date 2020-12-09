%Jorie Noll
%Lab 11

Lx = 2;
Ly = 0.6;
T = 0.2;
a = 4 * 1/(pi^2);
f = @(x,y,t) -8*1/(pi^2) *sin(pi*x)*cos(pi*y)*exp(t);
u0 = @(x, y) sin(pi*x/2)*sin(pi*y)+x*y+2*x*(1-y);
gbottom = @(x, t) 2*x*cos(pi*t);
gtop = @(x, t) x*cos(pi*t);
gleft = @(y, t) 0;
gright = @(y, t) (2*y + 4*(1-y))*cos(pi*t);
nx = 53;
ny = 21;
nt = 193;
u = heat2(f, u0, gbottom, gtop, gleft, gright, a, nx, ny, nt, Lx, Ly, T);
hx = Lx /(nx-1);
hy = Ly /(ny-1);

x = 0 : hx : Lx;
y = 0 : hy : Ly;
u2 = u(:,:,7);

surf(x, y, u2');
axis([0 2 0 .6 0 4]);
set(gca,'xtick', 0 : .4 : 2);
set(gca,'ytick', 0 : .1 : .6);
set(gca,'ztick', 0 : .8 : 4);
xlabel('x');
ylabel('y');
zlabel('u');
title('k = 7');
