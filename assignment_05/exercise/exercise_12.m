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

%calculate hough spaces (matrix) for the circle sizes
%BInärbild ablaufen und alle kreise einzeichnen die in Frage kommen können
%(an Kanten entlang mit der Größe des Kreises) -> Schnittpunkt =
%Mittelpunkt
%Pixel im Hugh Raum bekommen die Werte mit der Anzahl der Belegungen (4
%Kreise in einem Pixel -> Pixel = 4)//inkrementel
%Für jeden Kreis einen HughRaum
%Formel von Wikipedia
%Hugh Raum hat 3 Dimensionen (x,y, Radius), eine Schleife über circle size,
%2 weitere für X&Y
hSpaces = my_houghTransform(B, circleSizes);

%% exercise 12c

%plot the houghspaces
my_plotHoughSpaces(B,hSpaces,circleSizes);
%%Frabraum auf jet
solution_12c(gimg,circleSizes);

%% exercise 12d

%detect and draw circles
cimg = my_detectCircles(img,hSpaces,circleSizes);

figure; 
imshow(cimg);

solution_12(img,circleSizes);




