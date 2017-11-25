function [ dft ] = my_dft1D( f )
%MY_DFT1D Summary of this function goes here
%   Detailed explanation goes here
  
dft = zeros(size(f));
ln=length(f);

for k=0:ln-1
    for n=0:ln-1
        dft(k+1) = dft(k+1) + (f(n+1)*exp((-1i)*2*pi*k*n/ln));
    end
end

end

