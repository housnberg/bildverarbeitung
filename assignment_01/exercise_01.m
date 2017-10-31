% exercise 01 for the image processing 1 class
close all;
clear;


%% exercise 1a
close all;
clc

imgFilename = 'image1.png'

%loading the image
img = my_loadImage(imgFilename);

%showing the image
my_showImage(img);


%solution
exercise_1a(imgFilename);


%% exercise 1b
close all;
clc

%splitting the RGB channels of the color image
[imgR, imgG, imgB] = my_RGBSplit(img);

%plotting the image and each RGB channel
my_plotRGBSplit(img, imgR, imgG,imgB);

%solution
exercise_1b(img);


%% exercise 1c
close all;
clc

%gamma correct the image
imgGC = my_gammaCorrection(img);

my_showImage(imgGC);

%solution
exercise_1c(img);

%% exercise 1d
close all;
clc

%convert the RGB image to grayscale image
imgGray = my_RGB2Gray(img);

my_showImage(imgGray);

%solution
exercise_1d(img);


