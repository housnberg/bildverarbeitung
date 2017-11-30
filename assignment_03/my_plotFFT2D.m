function my_plotFFT2D( img , figName)
%MY_PLOTFFT2D Summary of this function goes here
%   Detailed explanation goes here

%{
    displayfft2 creates a diagram which shows the available frequencies
    (low and high). It also shows a smaller magnitude for higher
    frequencies
    You can also see there are  two dominationg directions (vertically and
    horizontally through center) 
%}

figure('name', figName);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
displayfft2(img);

end

