close all;
clear;

%{
a)
    anzahl levels mittels zweier log
    für jedes level
        my_gaussianLevel bild berechnen und der jeweiligen Zelle zuweisen
        Filtergröße 3*Sigma + 1, fspecial, imfilter (evtl. direkt gauss filter)
        jedes zweite x und y, um das kleinere Bild zu bekommen

b)
    wie lassen sich die bilder aufeinanderlegen? --> PYRAMIDE hilfreich
    beim kleinsten Level anfangen
    bei keiner überlappung --> infinity als fehlerwert
    normieren mittels anzahl an pixel, die sich überlappen
    verschieben der pixel mit +-1 in x und y schieben
    faktor als offset, verschiebung ausprobieren

c)
    b) visuell darstellen
%}

%% exercise 13a generating image pyramid

imgo = double(imread('../data/original.jpg'))/255.0;
imgt = double(imread('../data/transformed.jpg'))/255.0;

[pyramido, levelso] = my_gaussianPyramid(imgo);
[pyramidt, levelst] = my_gaussianPyramid(imgt);

my_plotImagePyramids(pyramido,pyramidt,floor(levelso/2), 1);

my_plotImagePyramids(pyramido,pyramidt,levelso, floor(levelso/2)+1);

solution_13a(imgo,imgt);

%% exercise 13b calculating translation
tic 
[tx, ty] = my_calculateImageTranslation(pyramido,pyramidt,levelso);
toc

solution_13b(imgo,imgt);

%% exercise 13c blending  images

 bimg = my_blendResults( imgo, imgt, tx, ty );
 
 figure;
 imshow(bimg);
 solution_13c(imgo,imgt);