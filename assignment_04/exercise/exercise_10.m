%%
close all;
clear;


%% exercise

img = hdrread('../data/TimHBox.hdr');

fimg = my_inverseFilter(img);

figure;
subplot(2,2,1);
imshow(img);
subplot(2,2,2);
displayfft2( double(rgb2gray(img)) );
subplot(2,2,3);
imshow(fimg)
subplot(2,2,4);
displayfft2(rgb2gray(fimg));

solution_10(img);
