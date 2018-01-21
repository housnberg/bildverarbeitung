close all;
clear;


%{
    my_fwt:
        man bekommt img_h_h 

        vier cell arrays 
            low low
            low high
            high low
            high high
        
        zwei unterfunktionen:
            x und y richtung
            ungerader low pass filter
                in zweierschritten durch bild und mittelwert von zwei
                nebeneinanderliegenden pixeln berechnen

                (breite halb so groß, höhe normal)

                --> in bild und danach high pass filter
            gerader high pass filter
                highpass auf lowpass 
                jeden zweiten pixel nehmen von vorher berechneten low pass
                subtrahieren

                (breite halb so groß durch vorherige funktion und höhe ebenfalls so groß)
            
            in x richtung zwei bilder (low und hight)
            in y richtunhg die zwei bilder, die man vorher berechnet hat

        alle außer high high noch mit faktor



        inverse wave transform berechnen ...
            lowpixel verdoppeln und summe aus high+low subtrahieren

        
    
        fwt anwenden
        neue cellarrays erstellen mit denoise 
        über anzahl level iterieren
        
%}

%% exercise 14 fast wavelet transformation

img = double(imread('../data/lena.png'))/255.0;

%gimg = rgb2gray(img);

[img_l_l, img_l_h, img_h_l, img_h_h, levels] = my_fwt(img);

% stop ploting the wavlts when you reached the 4th resolution layer
plotLevel = 4;
wfactor = 4;
my_plotWavelets(img_l_l, img_l_h, img_h_l, img_h_h, plotLevel, wfactor);

solution_14a(img,plotLevel,wfactor);

%% exercise 14 inverse fast wavelet transformation

iimg = my_ifwt(img_l_l{levels}, img_l_h, img_h_l, img_h_h,levels);

% plotting error between original and ifwt image 

figure;
subplot(1,3,1);
imshow(img);
title('original:');
axis equal;
axis([0,size(img,2),0,size(img,2)]);

subplot(1,3,2);
imshow(iimg);
title('ifwt:');
axis equal;
axis([0,size(img,2),0,size(img,2)]);

subplot(1,3,3);
imagesc(rgb2gray(img)-rgb2gray(iimg));
title('error:');
axis equal;
axis([0,size(img,2),0,size(img,2)]);
%end

solution_14b(img);


%% exercise 14 wavelet soft threshold denoising

% generating a noisy image with a mean of 0.0 and a noise variance of 0.005
nimg = imnoise(img,'gaussian',0,0.005);

% the threshold for the soft wavelet denoise 
% find a good value for lambda until you get a good
% result without artifacts
lambda= 0.5;

% denoise the image using wavelet soft threshold denoising
dnimg = my_waveletDenoise(nimg,levels,lambda);


% plot denoised result
figure;
subplot(1,3,1);
imshow(img);
title('original');
subplot(1,3,2);
imshow(nimg);
title('noisy');
subplot(1,3,3);
imshow(dnimg);
title(['denoised: lambda: ', num2str(lambda)]);

solution_14c(img,nimg,lambda);