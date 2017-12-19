function [ G, Gx, Gy ] = my_sobelEdge( img )
%MY_SOBELEDGE Summary of this function goes here
%   Detailed explanation goes here
    G = zeros(size(img));
    Gx = zeros(size(img));
    Gy = zeros(size(img));
    
    img = padarray(img, [1, 1]);
    %Horizontal Sobel Filter Mask
    kernelHorizontal = [-1 0 1; -2 0 2; -1 0 1];
    
    %Vertical Sobel Filter Mask
    kernelVertical = [-1 -2 -1; 0 0 0 ; 1 2 1];

    for i=1:size(img, 1)-2
        for j=1:size(img, 2)-2
            Gx(i, j) = sum(sum(kernelHorizontal.*img(i:i+2, j:j+2)));
            Gy(i, j) = sum(sum(kernelVertical.*img(i:i+2, j:j+2)));
            
            G(i, j) = sqrt(Gx(i, j).^2+Gy(i, j).^2);
        end
    end
end

