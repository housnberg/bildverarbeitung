clear;
close all;

%% exercise 9 unsharp masking

img = double(imread('peppers.png'))/255;

[ usimg, usmask ] = my_unsharpMasking( img );

%plotting the result images and the unsharp kernel
figure;
subplot(1,3,1);
imshow(img);
subplot(1,3,2);
imshow(usimg);
subplot(1,3,3);
imshow(usmask);


solution_09(img)