clear;
close all;

%% exercise 08a my box FFT2D
img = double(imread('peppers.png'))/255;

w = 2;
my_compareBox(img,w);
solution_08a(img,w);

w = 6;
my_compareBox(img,w);
solution_08a(img,w);

w = 12;
my_compareBox(img,w);
solution_08a(img,w);

%% exercise 08b my gau� FFT2D
img = double(imread('peppers.png'))/255;

sig0 = 2.2;
my_compareGauss(img,sig0);
solution_08b(img,sig0);

sig0 = 5.5;
my_compareGauss(img,sig0);
solution_08b(img,sig0);

sig0 = 10.1;
my_compareGauss(img,sig0);
solution_08b(img,sig0);

%% exercise 08c compare the filter kernels in the frequency domain

w = 12;
sigma = 6;

[ bimg, bftKernel ] = my_box2DFFT( img, w );

[ gimg, gftKernel ] = my_gauss2DFFT( img, 2*w, sigma );


my_plotKernels(bftKernel, gftKernel);

solution_08c(img,w,sigma);
