close all;
clear;


%% exercise 03a multi image denoise filter (cups)
img00 = my_loadImage('../cup/1.png');
img01 = my_loadImage('../cup/2.png');
img02 = my_loadImage('../cup/3.png');
img03 = my_loadImage('../cup/4.png');
img04 = my_loadImage('../cup/5.png');

cimg = my_nFilter(img00,img01,img02,img03,img04);

figure;
imshow(cimg);

solution_03ab(img00,img01,img02,img03,img04);

%% exercise 03b multi image denoise filter (tree)
close all;
img10 = my_loadImage('../tree/6.jpg');
img11 = my_loadImage('../tree/7.jpg');
img12 = my_loadImage('../tree/8.jpg');
img13 = my_loadImage('../tree/9.jpg');
img14 = my_loadImage('../tree/10.jpg');

timg = my_nFilter(img10,img11,img12,img13,img14);

figure;
imshow(timg);

solution_03ab(img10,img11,img12,img13,img14);