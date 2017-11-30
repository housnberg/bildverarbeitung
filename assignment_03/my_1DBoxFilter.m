function [ df ] = my_1DBoxFilter( f, w )
%MY_1DBOXFILTER Summary of this function goes here
%   Detailed explanation goes here
    
	df = zeros(size(f));
    
    width = size(f, 2);
    kernelSize = 2*w+1;
    f = [f f f];
    
    for i = 1 + width : 2 * width
        kernel = f(i-w : i+w);
        mean = sum(kernel) / kernelSize;
        df(i - width) = mean;
    end
end