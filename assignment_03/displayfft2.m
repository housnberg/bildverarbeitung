function displayfft2( f )
%DISPLAY_FFT Calculate and display the FT of f
[N,M]=size(f);
F=fft2(f,N,M);
F2=log(abs(fftshift(F)));

B = max(F2);
C = max(B);
imshow(F2, [0 C], 'InitialMagnification','fit'); colormap(jet); %colorbar
