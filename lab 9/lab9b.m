%Jorie Noll
%Assignment 9b

[xd, yd] = textread('Lab9a.dat'); %#ok<DTXTRD>
n = length(xd);
for k=7: n-7
    xd7 = [xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3)];
    yd7 = [yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3)];
    xd9 = [xd(k-4) xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3) xd(k+4)];
    yd9 = [yd(k-4) yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3) yd(k+4)];
    xd11 = [xd(k-5) xd(k-4) xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3) xd(k+4) xd(k+5)];
    yd11 = [yd(k-5) yd(k-4) yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3) yd(k+4) yd(k+5)];
    xd13 = [xd(k-6) xd(k-5) xd(k-4) xd(k-3) xd(k-2) xd(k-1) xd(k) xd(k+1) xd(k+2) xd(k+3) xd(k+4) xd(k+5) xd(k+6)];
    yd13 = [yd(k-6) yd(k-5) yd(k-4) yd(k-3) yd(k-2) yd(k-1) yd(k) yd(k+1) yd(k+2) yd(k+3) yd(k+4) yd(k+5) yd(k+6)];
    c6 = polyfit(xd7,yd7,6);
    c8 = polyfit(xd9,yd9,8);
    c10 = polyfit(xd11,yd11,10);
    c12 = polyfit(xd13,yd13,12);
    cder6 = polyder(c6);
    cder8 = polyder(c8);
    cder10 = polyder(c10);
    cder12 = polyder(c12);
    der6 = polyval(cder6, xd(k));
    der8 = polyval(cder8, xd(k));
    der10 = polyval(cder10, xd(k));
    der12 = polyval(cder12, xd(k));
    csecder6 = polyder(cder6);
    csecder8 = polyder(cder8);
    csecder10 = polyder(cder10);
    csecder12 = polyder(cder12);
    secder6 = polyval(csecder6, xd(k));
    secder8 = polyval(csecder8, xd(k));
    secder10 = polyval(csecder10, xd(k));
    secder12 = polyval(csecder12, xd(k));
    cthirdder6 = polyder(csecder6);
    cthirdder8 = polyder(csecder8);
    cthirdder10 = polyder(csecder10);
    cthirdder12 = polyder(csecder12);
    thirdder6 = polyval(cthirdder6, xd(k));
    thirdder8 = polyval(cthirdder8, xd(k));
    thirdder10 = polyval(cthirdder10, xd(k));
    thirdder12 = polyval(cthirdder12, xd(k));
    cfourthder6 = polyder(cthirdder6);
    cfourthder8 = polyder(cthirdder8);
    cfourthder10 = polyder(cthirdder10);
    cfourthder12 = polyder(cthirdder12);
    fourthder6 = polyval(cfourthder6, xd(k));
    fourthder8 = polyval(cfourthder8, xd(k));
    fourthder10 = polyval(cfourthder10, xd(k));
    fourthder12 = polyval(cfourthder12, xd(k));
    
    fprintf('x=%4.1f der6=%5.3f der8=%5.3f der10=%5.3f der12=%5.3f\n',xd(k), der6, der8, der10, der12);
    fprintf('x=%4.1f secder6=%5.3f secder8=%5.3f secder10=%5.3f secder12=%5.3f\n',xd(k), secder6, secder8, secder10, secder12);
    fprintf('x=%4.1f thirdder6=%5.3f thirdder8=%5.3f thirdder10=%5.3f thirdder12=%5.3f\n',xd(k), thirdder6, thirdder8, thirdder10, thirdder12);
    fprintf('x=%4.1f fourthder6=%5.3f fourthder8=%5.3f fourthder10=%5.3f fourthder12=%5.3f\n',xd(k), fourthder6, fourthder8, fourthder10, fourthder12);
end
