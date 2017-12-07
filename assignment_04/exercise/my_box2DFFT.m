function [ gimg, ftKernel ] = my_box2DFFT( img, w )
%MY_BOX2DFFT Summary of this function goes here
%   Detailed explanation goes here
%   Detailed explanation goes here
    
    is = size(img);
    ftKernel = zeros([is(1), is(2)]);
    
    kernelSize = 2 * w + 1;
    ftKernel(1:kernelSize, 1:kernelSize) = 1 / (kernelSize * kernelSize);
    
    ftImg = fft2(img);
    ftKernel = fft2(ftKernel);
    
    gimg = ftImg.*ftKernel;
    gimg = ifft2(gimg);

    
end

