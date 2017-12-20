function my_plotHoughSpaces( B, hSpaces, circleSizes )
%MY_EDGEDETECTION Summary of this function goes here
%   Detailed explanation goes here
  
    radius = 'r=';

    figure('name', 'Hough Spaces');
    subplot(2, 3, 1);
    imshow(B);
    title('coins')  

    subplot(2, 3, 2);
    %hSpaces(1)
    title([radius, circleSizes(1)])  
    
    subplot(2, 3, 3);
    %hSpaces(2)
    title(['r=', circleSizes(2)]) 

    subplot(2, 3, 4);
    %hSpaces(3)
    title([radius, circleSizes(3)]) 
    
    subplot(2, 3, 5);
    %hSpaces(4)
    title([radius, circleSizes(4)]) 
    
    subplot(2, 3, 6);
    %hSpaces(5)
    title([radius, circleSizes(5)]) 
    
end
