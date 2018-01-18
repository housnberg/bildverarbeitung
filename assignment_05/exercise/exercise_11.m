clear;
close all;

%% exercise 11a laplace edge detection
img = rgb2gray(double(imread('peppers.png'))/255);

Glaplace = my_laplaceEdge(img);

%% exercise 11b sobel edge detection
img = rgb2gray(double(imread('peppers.png'))/255);

Gsobel = my_sobelEdge(img);

my_plotSobel(img);

solution_11b(img);

%% exercise 11c marrhildreth edge detection
img = rgb2gray(double(imread('peppers.png'))/255);

sigma0 = 20;
sigma1 = 8;

[ DoGimg, Gmarr  ]= my_marrhildrethEdge(img, sigma0, sigma1);

plotMarrhildreth( img, sigma0, sigma1 );
solution_11c(img, sigma0, sigma1 );

%% exercise 11d canny (matlab) edge detection
img = rgb2gray(double(imread('peppers.png'))/255);

threshL = 0.035;
threshH = 0.075;
Gcanny = my_cannyEdge(img, threshL, threshH);


%% present results

compareEdges(img,Glaplace,Gsobel,Gmarr,Gcanny);

solution_11(img,sigma0, sigma1, threshL, threshH);

