function [ usimg, usmask ] = my_unsharpMasking( img )
%MY_UNSHARPMASKING Summary of this function goes here
%   Detailed explanation goes here
    
    %TODO: use own gaussian function
    h = fspecial('gaussian', size(img, 2), 0.6);
    imgGaussian = imfilter(img, h);
    
    
    usmask = 1.75 * (img - imgGaussian);
    usimg = img + usmask;
    
end

