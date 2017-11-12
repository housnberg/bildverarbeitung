function [ fimg ] = my_nFilter( img0,img1,img2,img3,img4 )
%MY_NFILTER Summary of this function goes here
    fimg = zeros(size(img0));

    [height, width] = size(img0);
    
    for i=1:height
        for l=1:width
            fimg(i,l) = (img0(i,l)+img1(i,l)+img2(i,l)+img3(i,l)+img4(i,l))/5;
        end
    end
	
%	fimg = (img0 + img1 + img2 + img3 + img4) ./ 5;
%  Detailed explanation goes here
%   Calculates the average of every pixel by summing up the values and divide by the amount of elements

     
end
