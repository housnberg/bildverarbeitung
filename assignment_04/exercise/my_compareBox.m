function [] = my_compareBox( img, w )
%MY_COMPAREBOX Summary of this function goes here
%   Detailed explanation goes here

figure('name', 'TEST');
subplot(2, 3, 1);
imshow(img);
img_g = 0.2989 * img(:,:,1) + 0.5870 * img(:,:,2) + 0.1140 * img(:,:,3);

subplot(2, 3, 2);
imgOwn = my_box2DFFT(img, w);
imshow(imgOwn);
imgOwn_g = 0.2989 * imgOwn(:,:,1) + 0.5870 * imgOwn(:,:,2) + 0.1140 * imgOwn(:,:,3);

subplot(2,3,3);
kernelSize = w*2+1;
h = ones(kernelSize, kernelSize) / (kernelSize * kernelSize);
imgInternal = imfilter(img, h);
imshow(imgInternal);
imgDif = imgInternal - imgOwn;
imgDif_g = 0.2989 * imgDif(:,:,1) + 0.5870 * imgDif(:,:,2) + 0.1140 * imgDif(:,:,3);

subplot(2, 3, 4);
displayfft2(img_g);

subplot(2, 3, 5);
displayfft2(imgOwn_g);

subplot(2, 3, 6);
displayfft2(imgDif_g);

end

