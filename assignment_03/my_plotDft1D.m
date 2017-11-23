function  my_plotDft1D( x,f,figName )
%MY_PLOT1DFFT Summary of this function goes here
%   Detailed explanation goes here

fdft = my_dft1D(f);
fidft = my_idft1D(fdft);

figure('name', figName);
subplot(2,1,1);
plot(x,fidft,'b');
sp = subplot(2,1,2);
%plot(Area, Function, Color
plot(x,fftshift(fdft),'b');
axis(sp,[-2*pi 2*pi 0 150]);

end

