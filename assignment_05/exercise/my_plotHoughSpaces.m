function my_plotHoughSpaces( B, hSpaces, circleSizes )
%MY_EDGEDETECTION Summary of this function goes here
%   Detailed explanation goes here
    
    figure('name', 'Hough Spaces');
    subplot(2, 3, 1);
    imshow(B);
    title('coins');

    for i=1:size(circleSizes, 2)
        pos=i+1;
        subplot(2, 3, pos);
        pcolor(hSpaces(:, :, i));
        set(gca,'Ydir','reverse')
        colormap(jet);
        shading interp;
        axis([0 size(B, 2) 0 size(B, 1)]);
        daspect([1 1 1]);
        title(['r=', num2str(circleSizes(i))])
    end
    
end
