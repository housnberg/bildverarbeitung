function [ dnf ] = my_simple1DDFTDenoise( nf )
%MY_SIMPLE1DFFTDENOISE Summary of this function goes here
%   Detailed explanation goes here
    threshold = 5;
    
    nf = my_dft1D(nf);
    nf(abs(nf) < threshold) = 0;
    
    dnf = my_idft1D(nf);
    
end

