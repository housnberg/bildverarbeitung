function [ f1, f2, f12 ] = my_combined1DFunction( x )
%MY_COMBINEDFUNCTION Summary of this function goes here
%   Detailed explanation goes here
    f1 = sin(x);
    f2 = sin(2 * x);
    
    f12 = f1 + f2;
end

