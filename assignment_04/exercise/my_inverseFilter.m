function [ fimg ] = my_inverseFilter( img )
%MY_INVERSEFILTER Summary of this function goes here
%   Detailed explanation goes here 
    
    h = fspecial('gaussian', [5 25], 2);
    ft_h = fft2(h);
    ft_r = fft2(img(:,:,1));
    ft_g = fft2(img(:,:,2));
    ft_b = fft2(img(:,:,3));
    
    fimg = ifft2(ft_i./ft_h);
end

