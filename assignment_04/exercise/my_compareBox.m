function [] = my_compareBox( img, w )
%MY_COMPAREBOX Summary of this function goes here
%   Detailed explanation goes here

figure('name', 'Own Implementation');
subplot(2, 3, 1);
imshow(img);

subplot(2, 3, 2);
imgOwn = my_box2DFFT(img, w);
imshow(imgOwn);

subplot(2,3,3);
kernelSize = w * 2 + 1;
h = ones(kernelSize, kernelSize) / (kernelSize * kernelSize);
imgInternal = imfilter(img, h);
imshow(imgInternal);

subplot(2, 3, 4);
displayfft2(rgb2gray(img));

subplot(2, 3, 5);
displayfft2(rgb2gray(imgOwn));

subplot(2, 3, 6);
imshow(abs(imgInternal - imgOwn));

end

