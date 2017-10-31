function [ imgGray ] = my_RGB2Gray( img )
%MY_RGBTOGRAY converts the RGB image to a grayscale image.
% before the conversion a gamma correction is performed.
imgGC = my_gammaCorrection(img)
[imgR, imgG, imgB] = my_RGBSplit(img);

imgGray = 0,299*imgR + 0,587*imgG + 0,114*imgB

end

