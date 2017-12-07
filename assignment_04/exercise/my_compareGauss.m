function my_compareGauss( img, sig )
%MY_COMPAREGAUSS Summary of this function goes here
%   Detailed explanation goes here

figure('name', 'TEST');
subplot(2, 3, 1);
imshow(img);
img_g = 0.2989 * img(:,:,1) + 0.5870 * img(:,:,2) + 0.1140 * img(:,:,3);

subplot(2, 3, 2);
% imgOwn = my_gauss2DFFT(img, w);
% imshow(imgOwn);
% imgOwn_g = 0.2989 * imgOwn(:,:,1) + 0.5870 * imgOwn(:,:,2) + 0.1140 * imgOwn(:,:,3);

subplot(2,3,3);
ind = -floor(3) : floor(3);
[X Y] = meshgrid(ind, ind);
h = exp(-(X.^2 + Y.^2) / (2*sig*sig));
h = h / sum(h(:));
imgInternal = imfilter(img, h);
imshow(imgInternal);

%calculate differences between Filters
imgDif = imgInternal - imgOwn;
imgDif_g = 0.2989 * imgDif(:,:,1) + 0.5870 * imgDif(:,:,2) + 0.1140 * imgDif(:,:,3);

subplot(2, 3, 4);
displayfft2(img_g);

subplot(2, 3, 5);
displayfft2(imgOwn_g);

subplot(2, 3, 6);
displayfft2(imgDif_g);
end

