function [ fimg ] = my_gaussFilter( img, w , sigma )
%MY_GAUSSFILTER Summary of this function goes here
%   Detailed explanation goes here
%{
    Patrick Greher
    Sueleyman Coskun
    Eugen Ljavin
%}

fimg = zeros(size(img));

[x, y] = meshgrid(-w : w, -w : w);
[height, width] = size(img);

kernel = exp(-(x.^2+y.^2)/(2*sigma*sigma))/(2*pi*sigma*sigma)

for i = 1+w : height-w  
  for j = 1+w : width-w
    conv = img(i - w: i + w, j - w: j + w).*kernel;
    fimg(i, j) = sum(conv(:));
  end
end

end