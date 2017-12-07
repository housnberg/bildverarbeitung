function [ gimg, ftKernel ] = my_gauss2DFFT( img, w, sigma )
%MY_GAUSS2DFFT Summary of this function goes here
%   Detailed explanation goes here
    
    is = size(img);
    ftKernel = zeros([is(1), is(2)]);
    gimg = zeros(is);

end

