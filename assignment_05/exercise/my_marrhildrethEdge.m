function [ DoGimg, Gmh  ] = my_marrhildrethEdge( img, sigma0, sigma1, threshold )
%MY_LAPLACEEDGE Summary of this function goes here
%   Detailed explanation goes here
    
    %1. Apply Difference of Gaussians (DoG)
    DoGimg = my_differenceOfGaussians(img, sigma0, sigma1);
    
    %2. Calculate zero-crossing
    Gmh = zeros(size(DoGimg));
    for x=2:size(DoGimg,1)-1
        for y=2:size(DoGimg,2)-1
           v = [DoGimg(x-1,y-1) DoGimg(x,y-1) DoGimg(x+1,y-1) 
                DoGimg(x-1,y) DoGimg(x,y) DoGimg(x+1,y)
                DoGimg(x-1,y+1) DoGimg(x,y+1) DoGimg(x+1,y+1)];
           res = sign(v);
           if res(5)*res(1) < 0 || res(5)*res(2) < 0 || res(5)*res(3) < 0 || res(5)*res(4) < 0 || res(5)*res(6) < 0 || res(5)*res(7) < 0 || res(5)*res(8) < 0 || res(5)*res(9) < 0
               Gmh(x,y) = 1;
           end
        end
    end
end

