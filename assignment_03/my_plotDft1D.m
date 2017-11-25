function  my_plotDft1D( x, f, figName )
%MY_PLOT1DFFT Summary of this function goes here
%   Detailed explanation goes here

figure('name', figName);
subplot(2,1,1);
plot(x, f, 'b');
%plot(x, my_idft1D(my_dft1D(f)), 'b');

%z = fftshift(my_idft1D(f));

subplot(2,1,2);
bar(x, fftshift(abs(my_dft1D(f))), 'b');

end

