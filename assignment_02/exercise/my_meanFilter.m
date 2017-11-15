function [ fimg ] = my_meanFilter( img, w )
%MY_MEANFILTER Summary of this function goes here
%   Detailed explanation goes here
%{
    Patrick Greher
    Sueleyman Coskun
    Eugen Ljavin
%}

fimg = zeros(size(img));
[height, width] = size(img);

for i = 1 : height
    for j = 1 : width
        row1 = i - w;
        row2 = i + w;
        column1 = j - w;
        column2 = j + w;
        if row1 < 1
           row1 = 1; 
        end
        if column1 < 1
           column1 = 1; 
        end
        if row2 > height
            row2 = height;
        end
        if column2 > width
            column2 = width;
        end
        kernel = img(row1 : row2, column1 : column2);
        fimg(i, j) = sum(kernel(:)) / (size(kernel, 1) * size(kernel, 1));
        
        %{
            or simply use this to improve performance:
            fimg(i, j) = mean(kernel(:));
        %}
    end
end

%{
for i = 1+w : height-w  
  for j = 1+w : width-w
    kernel = img(i-w : i+w, j-w : j+w);
    fimg(i, j) = mean(kernel(:));
  end
end
%}

end

