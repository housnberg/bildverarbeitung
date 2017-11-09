function [ fimg ] = my_bilateralFilter( img, w , sigma0, sigma1 )
%MY_BILATERALFILTER Summary of this function goes here
%   Detailed explanation goes here
%Räumliche und farbliche Distanz
%dann der Gaussfunktion übergeben, die jeden Wert nimmt und Gewichtung
%berechnet -> Gewichtungsmatrix
%mit Gausmatrix der Entfernung multiplizieren -> Summe für jede Dimension
%berechnen und Gewichtung beachten
%2 Guass -> eine mit Werten der Distanz
    fimg = zeros(size(img));
    
end


