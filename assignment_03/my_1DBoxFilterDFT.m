function [ dnf ] = my_1DBoxFilterDFT( nf, w )
%MY_1DFFTCONVOLUTION Summary of this function goes here
%   Detailed explanation goes here

    dnf = zeros(size(nf));
    width = size(nf, 2);
    kernelSize = 2*w+1;
    
    nff = fft(nf);
   
    for i = 1 : width
        row1 = i - w;
        row2 = i + w;
        if row1 < 1
           row1 = 1; 
        end
        if row2 > width
            row2 = width;
        end
        
        kernel = my_dft1D(fftshift(nf(row1 : row2)));
        mean = sum(kernel) / kernelSize;
        dnf(i) = mean * nff(i);
    end
    
    dnf = fftshift(ifft(dnf));
    
    %{
        Vergleich der Resultate: 
        Die Ergebnisse beider Boxfilter (im Orts- und Frequenzraum) sind gleich.
        Bei dem Box Filter handelt es sich um einen linearen Filter.
        Ein linearer Filter im Ortsraum besitzt einen äquivalenten Filter im
        Frequenzraum. 
    
        Quelle: Skript, 
        https://dsp.stackexchange.com/questions/8995/is-it-not-possible-to-perform-non-linear-filtering-in-frequency-domain
    %}
    
end

