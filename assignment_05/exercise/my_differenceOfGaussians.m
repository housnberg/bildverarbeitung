function [ dog ] = my_differenceOfGaussians( img, sigma0, sigma1 )
%MY_DIFFERENCEOFGAUSSAINS Summary of this function goes here
%   Detailed explanation goes here

    ks = 25;
    kernelSize = [ks,ks];
    mod = (ks-1)/2;
    img1 = padarray(img,[mod mod],0,'both');
    
    
    
    kernelGaussian1 = fspecial('gaussian', kernelSize, sigma0);
    kernelGaussian2 = fspecial('gaussian', kernelSize, sigma1);
    
    filteredImage1 = imfilter(img1, kernelGaussian1.*255);
    filteredImage2 = imfilter(img1, kernelGaussian2.*255);
    
    dog = filteredImage1 - filteredImage2;
    
end

