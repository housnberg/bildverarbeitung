%% exercise 02 for the image processing 1 class

clear;
close all;

%% exercise 2a
close all;
clc

imgFilename = 'peppers2.png'


%loading the image
img = my_loadImage(imgFilename);

%converting the image to grayscale
imgGray = my_RGB2Gray(img);
my_showImage(imgGray);

%calculating the histogram of the image
hist = my_hist(imgGray);
%plotting the histogram
my_plotHist(hist);

%solution
exercise_2a(imgFilename);

%% exercise 2b
close all;
clc

[maxImg, maxHist] = my_maxContrast(imgGray);

my_showImage(maxImg);
my_plotHist(maxHist);

%solution
exercise_2b(imgGray);


%% exercise 2c
close all;
clc

%calculates the normalized accumulated histogram
aHist = my_accumulatedHist(imgGray);
my_plotHist(aHist);


imgHE = my_histEqualization(imgGray, aHist);
histHE = my_hist(imgHE);
aHistHE = my_accumulatedHist(imgHE);

my_showImage(imgHE);
my_plotHist(histHE);
my_plotHist(aHistHE);

%solution
exercise_2c(imgGray);
