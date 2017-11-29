function my_plotFFT2D( img , figName)
%MY_PLOTFFT2D Summary of this function goes here
%   Detailed explanation goes here

%{
    displayfft2 creates a diagram which shows 
%}

figure('name', figName);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
displayfft2(img);

end

