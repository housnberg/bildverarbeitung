function [ error ] = my_imageDifference( src, tar, tx, ty )
%MY_IMAGEDIFFERENCE Summary of this function goes here
%   Detailed explanation goes here

    %These initializations are only to make execution possible.
    %+++!!!Please replace it with your own code!!!+++
    
       %pyramide 1 verschieben und unterschied zu pyramide 0
       %berechnen
       n = numel(src);
       a = circshift(tar,[tx,ty]);
       error = sum(abs(src(:) - a(:)))/n;
       if error == 0
           error = Inf(1);
       end
end

