function [ gimg, ftKernel ] = my_gauss2DFFT( img, w, sigma )
%MY_GAUSS2DFFT Summary of this function goes here
%   Detailed explanation goes here
    
    is = size(img);
    ftKernel = zeros([is(1), is(2)]);

    [x, y] = meshgrid(-w : w, -w : w);
    gaussianKernel = exp(-(x.^2+y.^2)/(2*sigma*sigma))/(2*pi*sigma*sigma);
    gaussianKernel = gaussianKernel / sum(gaussianKernel(:));
    gkSize = size(gaussianKernel);
   
    %Kernel auf die Bildgröße mit 0en padden, sodass der Kernel zentriert ist
    ftKernel(is(1)/2+(1:gkSize(1))-floor(gkSize(1)/2), is(2)/2+(1:gkSize(2))-floor(gkSize(2)/2)) = gaussianKernel;
    
    ftKernel = fft2(ftKernel);
    ftImg = fft2(img);

    gimg = ftImg.*ftKernel;
    gimg = ifft2(gimg);
    
    %Jeden RGB-Kanal shiften (vertauschen der Quadranten 1 und 4 bzw. 2 und 3) 
    %und zu neuem Bild wieder zusammenfuehren
    gimg = cat(3, fftshift(gimg(:, :, 1)), fftshift(gimg(:, :, 2)), fftshift(gimg(:, :, 3)));

end

