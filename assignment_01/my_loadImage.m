function [ img ] = my_loadImage( filename )
%MY_LOADIMAGE Loads an image with the given file.
%The image data type needs to be to converted double.
% the range needs to be vonverted form [0-255] ot [0.0-1.0]
 I = imread(filename)
 I2 = double(I)
 %convert double
 Idouble = I2./255.0
 [img] = Idouble
end

