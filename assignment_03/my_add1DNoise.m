function [ nf ] = my_add1DNoise( f )
%MY_ADDNOISE Summary of this function goes here
%   Detailed explanation goes here

    nf = zeros(size(f));
    
    z = randn(size(f)) / 15;
    nf = f + z;
    
end

