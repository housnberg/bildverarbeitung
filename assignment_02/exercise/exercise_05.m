close all;
clear;


imgFile = '../cup/noisy.png';


%% exercise 05 bilateral filter

%parameter for testing your code

img = my_loadImage(imgFile);

w = 10;
sigma0 = 1.5;
sigma1 = 0.15;


fimg = my_bilateralFilter(img,w, sigma0, sigma1);

figure;
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(fimg);

solution_05(img,w, sigma0, sigma1);