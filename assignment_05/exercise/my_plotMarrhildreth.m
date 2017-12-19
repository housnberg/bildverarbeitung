function  my_plotMarrhildreth(  img, sigma0, sigma1, threshold )
%MY_PLOTMARRHILDRETH Summary of this function goes here
%   Detailed explanation goes here

    [Gthres, Gsmooth, Gmh] = my_marrhildrethEdge(img, sigma0, sigma1, threshold);

    figure('name', 'Marrhildreth Edge');
    subplot(2, 2, 1);
    imshow(img);
    title('original image')  
    
    subplot(2, 2, 2);
    imshow(Gsmooth);
    title('smoothened image')
    
    subplot(2, 2, 3);
    imshow(Gmh);
    title('output image')
    
    subplot(2, 2, 4);
    imshow(Gthres);
    title('output image with threshold')

end

