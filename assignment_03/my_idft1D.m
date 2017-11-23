function [ dft ] = my_idft1D( f )
%MY_DFT1D Summary of this function goes here
%   Detailed explanation goes here

  dft = zeros(size(f));
  dft = ifft(f);

end

