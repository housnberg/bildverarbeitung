function [ imgGC ] = my_gammaCorrection( img )
%MY_GAMMACORRECTION calculate a gamma corrected version of the image

imgGC = img.^(2.2);

end

