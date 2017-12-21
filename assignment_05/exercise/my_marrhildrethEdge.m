function [ Gthres, Gsmooth, Gmh  ] = my_marrhildrethEdge( img, sigma0, sigma1, threshold )
%MY_LAPLACEEDGE Summary of this function goes here
%   Detailed explanation goes here
    
    %1. Apply Difference of Gaussians (DoG)
    Gsmooth = my_differenceOfGaussians(img, sigma0, sigma1);
    
    %2. Calculate zero-crossing
    Gmh = Gsmooth;
    old = 0;
    old_x = 0;
    old_y = 0;
    for x=1:size(Gsmooth,1)
        for y=1:size(Gsmooth,2)
            if old<0 && Gsmooth(x,y) >0 || old>0 && Gsmooth(x,y)<0
                Gmh(x,y) = 0;
                Gmh(old_x,old_y) = 0;
            end
            old = Gmh(x,y);
            old_y = y;
        end
        old_x = x;
    end
    
    %3. Apply thresholding
    mask = Gmh.*255 < threshold;
    Gthres = Gmh;
    Gthres(mask) = 0;
end

