function [ M ] = separieren( w, SIGM )
%erstellt Faltungsmatrix 

[x,y] = meshgrid(-w:w,-w:w);
M = (1/(2*pi*SIGM))*exp(-(x.^2+y.^2)/(2*SIGM^2));
M = M/sum(M(:));

end

