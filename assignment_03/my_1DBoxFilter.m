function [ df ] = my_1DBoxFilter( f, w )
%MY_1DBOXFILTER Summary of this function goes here
%   Detailed explanation goes here
    
    df = zeros(size(f,2));
    
    width = size(f, 2);
    kernelSize = 2*w+1;
    
    for i = 1 : width
        row1 = i - w;
        row2 = i + w;
        if row1 < 1
           row1 = 1; 
        end
        if row2 > width
            row2 = width;
        end
        
        kernel = f(row1 : row2);
        mean = sum(kernel) / kernelSize;
        df(i) = mean;
    end
    
end

