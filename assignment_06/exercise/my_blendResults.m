function [ bimg ] = my_blendResults( img0, img1, tx, ty )
%MY_BLENDbimgULTS Summary of this function goes here
%   Detailed explanation goes here

    %These initializations are only to make execution possible.
    %+++!!!Please replace it with your own code!!!+++
    height = size(img0,1)+abs(ty);
    width = size(img0,2)+abs(tx);
    bimg = zeros([height, width]);
    
    if ty < 0
        if tx < 0
            for h=1:size(img0,1)
                for w=1:size(img0,2)
                    bimg(h,w,1) = img0(h,w,1);
                    bimg(h,w,2) = img0(h,w,2);
                    bimg(h,w,3) = img0(h,w,3);
                end
            end
        else
            for h=1:size(img0,1)
                for w=1:size(img0,2)
                    bimg(h-ty,w,1) = img0(h,w,1);
                    bimg(h-ty,w,2) = img0(h,w,2);
                    bimg(h-ty,w,3) = img0(h,w,3);
                end
                for w2=size(img1,2):size(img1,2)+tx
                    bimg(h,w2,1) = img1(h,w2-tx,1);
                    bimg(h,w2,2) = img1(h,w2-tx,2);
                    bimg(h,w2,3) = img1(h,w2-tx,3);
                end
            end
            for h=1:ty*-1
                for w=1:size(img1,2)
                   bimg(h,w+tx,1)=img1(h,w,1); 
                   bimg(h,w+tx,2)=img1(h,w,2); 
                   bimg(h,w+tx,3)=img1(h,w,3); 
                end
            end
        end
    end
    
    


end

