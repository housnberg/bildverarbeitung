function [ bimg ] = my_blendResults( img0, img1, tx, ty )
%MY_BLENDbimgULTS Summary of this function goes here
%   Detailed explanation goes here

    %These initializations are only to make execution possible.
    %+++!!!Please replace it with your own code!!!+++
    if  tx < 0
        bimg = padarray(img0,[0,-tx],"pre");
    else
        bimg = padarray(img0,[0,tx],"post");
    end
    if  ty < 0
        bimg = padarray(bimg,[-ty,0],"pre");
    else
        bimg = padarray(bimg,[ty,0],"post");
    end


end

