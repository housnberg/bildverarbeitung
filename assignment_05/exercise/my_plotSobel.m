function my_plotSobel( img )
%MY_CANNYEDGE Summary of this function goes here
%   Detailed explanation goes here

    [G, Gx, Gy] = my_sobelEdge(img);

    figure('name', 'Result');
    subplot(2, 2, 1);
    imshow(img);
    title('img')  
    
    subplot(2, 2, 2);
    imshow(G);
    title('G')
    
    subplot(2, 2, 3);
    imshow(Gx);
    title('Gx')
    
    subplot(2, 2, 4);
    imshow(Gy);
    title('Gy')
    
end
