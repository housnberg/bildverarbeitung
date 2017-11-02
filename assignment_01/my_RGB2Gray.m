function [ imgGray ] = my_RGB2Gray( img )
%MY_RGBTOGRAY converts the RGB image to a grayscale image.
% before the conversion a gamma correction is performed.
imgGC = my_gammaCorrection(img);
r = imgGC(:,:,1);
g = imgGC(:,:,2);
b = imgGC(:,:,3);

%imgGray = 0.299*r + 0.587*g + 0.114*b
imgGray = 0.2126*r + 0.7152*g + 0.0722*b;
end

