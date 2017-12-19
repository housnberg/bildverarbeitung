function [ G ] = my_laplaceEdge( img )
%MY_LAPLACEEDGE Summary of this function goes here
%   Detailed explanation goes here
    
    %TODO: Evtl. in Frequenzraum überführen
    G = zeros(size(img));
    img = padarray(img, [1, 1]);
    
    %Laplace Filter Mask
    kernel = [0 1 0; 1 -4 1; 0 1 0];
    
    for i=1:size(img, 1)- 2
        for j=1:size(img, 2)-2
            G(i, j) = sum(sum(kernel.*img(i:i+2, j:j+2)));
        end
    end
  
    %TODO: Entfernen. nur zur veranschaulichung!
    figure;
    imshow(G);
    title('Filtered Image');
    
end

