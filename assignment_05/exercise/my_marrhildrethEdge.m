function [ Gthres, Gsmooth, Gmh  ] = my_marrhildrethEdge( img, sigma0, sigma1, threshold )
%MY_LAPLACEEDGE Summary of this function goes here
%   Detailed explanation goes here
    

    %1. Apply Difference of Gaussians (DoG)
    Gsmooth = my_differenceOfGaussians(img, sigma0, sigma1);
    
    %2. Calculate zero-crossing
    Gmh = zeros(size(Gsmooth));
    
    %3. Apply thresholding
    mask = Gmh.*255 < threshold;
    Gthres = Gmh;
    Gthres(mask) = 0;
end

