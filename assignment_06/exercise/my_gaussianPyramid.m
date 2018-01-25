function [ pyramid, levels ] = my_gaussianPyramid( img )
%MY_GAUSSAINPYRAMID Summary of this function goes here
%   Detailed explanation goes here


    %These initializations are only to make execution possible.
    %+++!!!Please replace it with your own code!!!+++
    levels = log(512)/log(2);
    ks = [2,2];
    sigma = 4;
    gf = fspecial('gaussian',ks, sigma);
    pyramid = cell(1,levels);
    for i=1:levels
        if i > 1            
            img_v = img(1:2:size(pyramid{i-1},1),   :,:);
            img_h = img_v(:,   1:2:size(pyramid{i-1},2),:);
            img = img_h;
        end
        pyramid{i} = img;
        %img = imfilter(img,gf);
        img = imgaussfilt(img,2);
    end
    

end

