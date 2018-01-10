function [ hSpaces ] = my_houghTransform( B, circleSizes )
%MY_HOUGHTRANSFORM Summary of this function goes here
%   Detailed explanation goes here

    [sy, sx] = size(B);
    sc = length(circleSizes);
    hSpaces = zeros([sy, sx, sc]);
    
    for cs=1:sc
        for x=1:size(B, 2) 
           for y=1:size(B, 1) 
              if B(x, y) == 1
                currentRadius = circleSizes(cs);
                for degree=1:360
                    pointA = floor(x - currentRadius * cosd(degree));
                    pointB = floor(y - currentRadius * sind(degree)); 
                    if pointA >=1 && pointA <= size(B, 1) && pointB >= 1 && pointB <= size(B, 2) 
                        hSpaces(pointA, pointB, cs) = hSpaces(pointA, pointB, cs) + 1;
                    end
                end
              end
           end
        end
    end

end

