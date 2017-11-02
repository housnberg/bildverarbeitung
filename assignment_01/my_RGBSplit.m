function [ imgR, imgG, imgB ] = my_RGBSplit( imgRGB )
%my_RGBSplit Splits the RGB channels of the images in separate images. 
%imgRGB(x,y,RGBDimension
r = imgRGB(:,:,1);
g = imgRGB(:,:,2);
b = imgRGB(:,:,3);

zero = zeros(size(imgRGB,1),size(imgRGB,2));

imgR = cat(3,r,zero,zero);
imgG = cat(3,zero,g,zero);
imgB = cat(3,zero,zero,b);


end

