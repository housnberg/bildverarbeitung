function [ B ] = my_edgeDetection( img )
%MY_EDGEDETECTION Summary of this function goes here
%   Detailed explanation goes here
    
    threshL = 0.035;
    threshH = 0.075;
    
    B = my_cannyEdge(img, threshL, threshH);
    
end

