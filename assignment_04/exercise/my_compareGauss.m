function my_compareGauss( img, sig )
%MY_COMPAREGAUSS Summary of this function goes here
%   Detailed explanation goes here
  
    figure('name', 'Own Implementation');
    subplot(2, 3, 1);
    imshow(img);

    w = 25;
    subplot(2, 3, 2);
    imgOwn = my_gauss2DFFT(img, w, sig);
    imshow(imgOwn);

    subplot(2, 3, 3);
    %kernel = fspecial('gaussian', w, sig);
    [x, y] = meshgrid(-w : w, -w : w);
    kernel = exp(-(x.^2+y.^2)/(2*sig*sig))/(2*pi*sig*sig);
    kernel = kernel / sum(kernel(:));
    imgInternal = imfilter(img, kernel);
    imshow(imgInternal);

    subplot(2, 3, 4);
    displayfft2(rgb2gray(img));

    subplot(2, 3, 5);
    displayfft2(rgb2gray(imgOwn));

    subplot(2, 3, 6);
    imshow(imabsdiff(real(imgInternal), real(imgOwn)), []);
    

end

