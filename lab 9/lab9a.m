%Jorie Noll
%Assignment 9a

[xd, yd] = textread('Lab9a.dat'); %#ok<DTXTRD>
n = length(xd);
figure(1);
color = ['r','y','g','b','k','r','m','c','b','g'];
hold on;
box on;
for(k = 4:n-3)
    xd7 = [xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3)];
    yd7 = [yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3)];
    c6 = polyfit(xd7, yd7, 6);
    x = xd(k-3) : .001 : xd(k+3);
    y6 = polyval(c6, x);
    plot(x, y6, color(k), xd, yd, 'ko');
    axis([-10 18 -8 10]);
    set(gca, 'xtick', 0:11);
    set(gca, 'ytick', 1:13);
    xlabel('x');
    ylabel('y');
    title('Filtered 6th Order Polynomials');
end

figure(2);
hold on;
box on;
color = ['y','g','b','r','m','c','b'];
for(k = 5:n-4)
    xd9 = [xd(k-4) xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3) xd(k+4)];
    yd9 = [yd(k-4) yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3) yd(k+4)];
    c8 = polyfit(xd9, yd9, 8);
    x = xd(k-4) : .001 : xd(k+4);
    y8 = polyval(c8, x);
    plot(x, y8, color(k), xd, yd, 'ko');
    axis([-25 35 -8 10]);
    set(gca, 'xtick', -1:11);
    set(gca, 'ytick', 0:14);
    xlabel('x');
    ylabel('y');
    title('Fitted 8th Order Polynomials');
end

figure(3);
hold on;
box on;
color=['g', 'b', 'r', 'm', 'c'];
for(k = 6:n-5)
    xd11 = [xd(k-5) xd(k-4) xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3) xd(k+4) xd(k+5)];
    yd11 = [yd(k-5) yd(k-4) yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3) yd(k+4) yd(k+5)];
    c10 = polyfit(xd11, yd11, 10);
    x = xd(k-5) : .001 : xd(k+5);
    y10 = polyval(c10, x);
    plot(x, y10, color(k), xd, yd, 'ko');
    axis([-70 80 -8 10]);
    set(gca, 'xtick', -1:11);
    set(gca, 'ytick', -5:18);
    xlabel('x');
    ylabel('y');
    title('Fitted 10th Order Polynomials');
end

figure(4);
hold on;
box on;
color = ['b','k','r','m'];
for(k = 7:n-6)
    xd13 = [xd(k-6) xd(k-5) xd(k-4) xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3) xd(k+4) xd(k+5) xd(k+6)];
    yd13 = [yd(k-6) yd(k-5) yd(k-4) yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3) yd(k+4) yd(k+5) yd(k+6)];
    c12 = polyfit(xd13, yd13, 12);
    x = xd(k-6) : .001 : xd(k+6);
    y12 = polyval(c12, x);
    plot(x, y12, color(k), xd, yd, 'ko');
    axis([-220 220 -8 110]);
    set(gca, 'xtick', -1:11);
    set(gca, 'ytick', -5:18);
    xlabel('x');
    ylabel('y');
    title('Fitted 12th Order Polynomials');
end
