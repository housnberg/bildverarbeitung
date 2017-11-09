function [ fimg ] = my_meanFilter( img, w )
%MY_MEANFILTER Summary of this function goes here
%   Detailed explanation goes here

fimg = zeros(size(img));
imgr = img(:,:,1);
imgg = img(:,:,2);
imgb = img(:,:,3);

r=(w-1)/2;

%padarray adds zeros on all sides (both)
img = padarray(img,[2 2],'both');
[height, width] = size(img);
for x=1+r:height-r
    for y=1+r:width-r
        sumr=0;
        sumb=0;
        sumg=0;
        sum=0;
        for y1=y-r:y-r
            for x1=x-r:x-r
%                 sum = sum+img(x1,y1);
                 sumr = sumr+imgr(x1,y1);
                 sumg = sumg+imgg(x1,y1);
                 sumb = sumb+imgb(x1,y1);
            end
        end
        fimg(x-r,y-r) = sumr/(r*r)+sumg/(r*r)+sumb/(r*r);
    end
end

end