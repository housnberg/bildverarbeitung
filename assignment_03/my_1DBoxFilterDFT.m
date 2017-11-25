function [ dnf ] = my_1DBoxFilterDFT( nf, w )
%MY_1DFFTCONVOLUTION Summary of this function goes here
%   Detailed explanation goes here

    dnf = zeros(size(nf));
    width = size(nf, 2);
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
        
        kernel = nf(row1 : row2);
        mean = sum(kernel) / kernelSize;
        dnf(i) = mean;
    end
    
end

