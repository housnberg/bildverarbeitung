close all;
clear;


imgFile0 = 'peppers.png';
imgFile1 = '../cup/noisy.png';

img0 = my_loadImage(imgFile0);
img1 = my_loadImage(imgFile1);

%% exercise 04a mean filter
%parameter for testing your code
w0 = 5;
meanImg0 = my_meanFilter(img0,w0);

figure;
imshow(meanImg0);

solution_04a(img0,w0);

%%
%choose the best parameters for the image
w1 = 0;
meanImg1 = my_meanFilter(img1,w1);

figure;
imshow(meanImg1);

solution_04a(img1,w1);

%% exercise 04b median filter
close all;

%parameter for testing your code
w0 = 5;

medianImg0 = my_medianFilter(img0,w0);

figure;
imshow(medianImg0);

solution_04b(img0,w0);
%%
%choose the best parameters for the image
w1 = 0;

medianImg1 = my_medianFilter(img1,w1);

figure;
imshow(medianImg1);

solution_04b(img1,w1);

%% exercise 04c gauss filter
close all;

%parameter for testing your code

w0 = 5;
sigma0= 3.0;

gaussImg0 = my_gaussFilter(img0,w0, sigma0);

figure;
imshow(gaussImg0);

solution_04c(img0,w0,sigma0);

%%
%choose the best parameters for the image
w1 = 0;
sigma1= 0.1;

gaussImg1 = my_gaussFilter(img1,w1, sigma1);

figure;
imshow(gaussImg1);

solution_04c(img1,w1,sigma1);