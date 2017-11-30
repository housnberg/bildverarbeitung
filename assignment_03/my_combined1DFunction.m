function [ f1, f2, f12 ] = my_combined1DFunction( x )
%MY_COMBINEDFUNCTION Summary of this function goes here
%   Detailed explanation goes here
    f2 = sin(x);
    f1 = sin(2 * x + pi/1.5);
    
    f12 = f1 + f2;
end

