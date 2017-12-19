function [ G ] = my_cannyEdge( img, threshL, threshH )
%MY_CANNYEDGE Summary of this function goes here
%   Detailed explanation goes here
    
    G = edge(img, 'Canny', [threshL threshH]);
   
    %TODO: Entfernen. nur zur veranschaulichung!
    figure;
    imshow(G);
    title('Filtered Image');
    
    figure;
    imshow(img);
    title('Filtered Image');
end

