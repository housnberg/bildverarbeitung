function [ dft ] = my_idft1D( f )
%MY_DFT1D Summary of this function goes here
%   Detailed explanation goes here

dft = zeros(size(f));
ln=length(f);

for n=0:ln-1
    for k=0:ln-1
        dft(n+1)=dft(n+1)+(f(k+1)*exp(1i*2*pi*k*n/ln));
    end
end

dft=dft./ln;
end

