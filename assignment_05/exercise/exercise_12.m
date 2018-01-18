clear;
close all;

%% exercise 12 hough transformation
img = (double(imread('../data/Coins.jpg'))/255);
gimg = rgb2gray(img);

%% exercise 12a
B = my_edgeDetection(gimg);

%% exercise 12b
% list of different circle sizes (radius)
%fill the list with suitable values
circleSizes = [ 47, 55, 57, 65, 75 ];

hSpaces = my_houghTransform(B, circleSizes);

%% exercise 12c
%plot the hughspaces
my_plotHoughSpaces(B,hSpaces,circleSizes);

solution_12c(gimg,circleSizes);

%% exercise 12d

%detect and draw circles
cimg = my_detectCircles(img,hSpaces,circleSizes);

figure; 
imshow(cimg);

solution_12(img,circleSizes);