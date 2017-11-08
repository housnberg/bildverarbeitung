function [ fimg ] = my_meanFilter( img, w )
%MY_MEANFILTER Summary of this function goes here
%   Detailed explanation goes here

fimg = zeros(size(img));

[height, width] = size(img);
for x=1:height
    for y=1:width
        sum = img(x,y);
        for i=1:w 
            
        end
        fimg(x,y)= sum/w;
    end
end


end

