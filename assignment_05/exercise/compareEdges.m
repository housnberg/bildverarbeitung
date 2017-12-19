function compareEdges( img,Glaplace,Gsobel,Gmarr,Gcanny )
%MY_COMPAREEDGES Summary of this function goes here
%   Detailed explanation goes here
figure;
  subplot(2,2,1);imshow(abs(Glaplace));title('Laplace');
  subplot(2,2,2);imshow(Gsobel);title('Sobel');
  subplot(2,2,3);imshow(Gmarr);title('Marr Hildreth');
  subplot(2,2,4);imshow(Gcanny);title('Canny');

end

