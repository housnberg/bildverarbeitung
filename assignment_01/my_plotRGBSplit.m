function my_plotRGBSplit( imgRGB, imgR, imgG, imgB )
%MY_PLOTRGBSPLIT Plots the original RGB image and 
%its splitted R,G,B channels in a single figure. 

subplot(1,4,1), imshow(imgRGB)
subplot(1,4,2), imshow(imgR)
subplot(1,4,3), imshow(imgG)
subplot(1,4,4), imshow(imgB)


end

