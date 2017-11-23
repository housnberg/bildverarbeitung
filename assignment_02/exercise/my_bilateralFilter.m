function [ fimg ] = my_bilateralFilter( img, w , sigma0, sigma1 )
%MY_BILATERALFILTER Summary of this function goes here
%   Detailed explanation goes here
%Räumliche und farbliche Distanz
%dann der Gaussfunktion übergeben, die jeden Wert nimmt und Gewichtung
%berechnet -> Gewichtungsmatrix
%mit Gausmatrix der Entfernung multiplizieren -> Summe für jede Dimension
%berechnen und Gewichtung beachten
%2 Guass -> eine mit Werten der Distanz
    [x, y] = meshgrid(-w : w, -w : w);
    [height, width] = size(img);
    kernel = exp(-(x.^2+y.^2)/(2*sigma0*sigma0))/(2*pi*sigma0*sigma0);
    %get max brightness
    sigma1 = 255*sigma1;
    fimg = zeros(size(img));
    for i=1:height
        for j=1:width
            
        end
    end
    
end


