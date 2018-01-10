function [ dog ] = my_differenceOfGaussians( img, sigma0, sigma1 )
%MY_DIFFERENCEOFGAUSSAINS Summary of this function goes here
%   Detailed explanation goes here
    kernelSize = [25,25];

    kernelGaussian1 = fspecial('gaussian', kernelSize, sigma0);
    kernelGaussian2 = fspecial('gaussian', kernelSize, sigma1);
    
    filteredImage1 = imfilter(img, kernelGaussian1.*255);
    filteredImage2 = imfilter(img, kernelGaussian2.*255);
    
    dog = filteredImage1 - filteredImage2;
    
end

