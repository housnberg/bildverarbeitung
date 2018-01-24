function  my_plotImagePyramids( pyramid0, pyramid1, endLevel, startLevel )
%MY_PLOTIMAGEPYRAMIDS Summary of this function goes here
%   Detailed explanation goes here

for i=startLevel:endLevel
    if i == startLevel
        im0 = pyramid0{i};
        im1 = pyramid1{i};
    else
       width = size(pyramid0{startLevel},2) - size(pyramid0{i},2);
       pyramid0{i} = padarray(pyramid0{i},[0 width],'post');
       pyramid1{i} = padarray(pyramid1{i},[0 width],'post');
       im0 = [im0; pyramid0{i}];
       im1 = [im1; pyramid1{i}];
    end
end

figure;
subplot(1,2,1);
imshow(im0);
title("Pyramid Original Level");
subplot(1,2,2);
imshow(im1);
title("Pyramid Transformed");
