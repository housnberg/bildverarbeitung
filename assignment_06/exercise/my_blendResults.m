function [ bimg ] = my_blendResults( img0, img1, tx, ty )
%MY_BLENDbimgULTS Summary of this function goes here
%   Detailed explanation goes here

    %These initializations are only to make execution possible.
    %+++!!!Please replace it with your own code!!!+++
    height = size(img0,1)+abs(ty);
    width = size(img0,2)+abs(tx);
    bimg = zeros([height, width]);
    
    for i=1:height
        for j=1:width
            if tx > 0 && j <= size(img0,2)
                bimg(i,j,1) = img0(i,j,1);
            elseif tx > 0 && j > size(img0,2)
                bimg(i,j) = img1(i,j-tx);
                if i> size(img0,1)
                    break;
                end
            end
        end
    end
    


end

