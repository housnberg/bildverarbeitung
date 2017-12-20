function [ hSpaces ] = my_houghTransform( B, circleSizes )
%MY_HOUGHTRANSFORM Summary of this function goes here
%   Detailed explanation goes here

    [sy, sx] = size(B);
    sc = length(circleSizes);
    hSpaces = zeros([sy, sx, sc]);
        
    
    %Hier gut beschrieben wie man es loest: http://www.aishack.in/tutorials/circle-hough-transform/
    test = zeros(size(B));
    %{
    pointA = 0;
    pointB = 0;
    
    for x=1:size(B, 1)
        for y=1:size(B, 2)
            if B(x, y) == 1
                currentRadius = circleSizes(1);
                pointA = x - currentRadius * cosd(360);
                pointB = y - currentRadius * sind(360); 
                
                test = insertShape(test, 'circle', [pointA, pointB, currentRadius], 'LineWidth', 1);
            end
        end
    end
    
    figure('name', 'Hough Spaces');
    imshow(test);
    
    %}
    

end

