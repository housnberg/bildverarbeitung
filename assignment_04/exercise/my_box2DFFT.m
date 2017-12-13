function [ gimg, ftKernel ] = my_box2DFFT( img, w )
%MY_BOX2DFFT Summary of this function goes here
%   Detailed explanation goes here
%   Detailed explanation goes here
    
    is = size(img);
    ftKernel = zeros([is(1), is(2)]);
    
    kernelSize = 2 * w + 1;
    boxKernel(1:kernelSize, 1:kernelSize) = 1 / (kernelSize * kernelSize);
    bkSize = size(boxKernel);
  
    %Kernel auf die Bildgröße mit 0en padden, sodass der Kernel zentriert ist
    ftKernel(is(1)/2+(1:bkSize(1))-floor(bkSize(1)/2), is(2)/2+(1:bkSize(2))-floor(bkSize(2)/2)) = boxKernel;
    
    ftImg = fft2(img);
    ftKernel = fft2(ftKernel);
    
    gimg = ftImg.*ftKernel;
    gimg = ifft2(gimg);
    
    %Jeden RGB-Kanal shiften (vertauschen der Quadranten 1 und 4 bzw. 2 und 3) 
    %und zu neuem Bild wieder zusammenfuehren
    gimg = cat(3, fftshift(gimg(:, :, 1)), fftshift(gimg(:, :, 2)), fftshift(gimg(:, :, 3)));
    
end

