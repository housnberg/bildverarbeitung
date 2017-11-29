function [ lpimg ] = my_idealLowPassFilter( img,maxFrequency )
%MY_IDEALLOWPASSFFT Summary of this function goes here
%   Detailed explanation goes here
    
    %Fourier Transformation
    ft = fft2(img);
    
    %create Ideal Low-Pass Filter
    % 1 if sqrt(u^2+v^2) <= maxFrequency , Rest zero
    [width, height] = size(img);
    y=0:(width-1);
    x=0:(height-1);
    j=1;
    
   
    for i=height/2:height
        if x(i)>0
            indices_x(:,j) = i;
            j=j+1;
        end
    end
    j=1;
    for i=width/2:width
        if y(i)>0
            indices_y(:,j)= i;
            j=j+1;
        end
    end
    
    x(indices_x)=x(indices_x)-height;
    y(indices_y)=y(indices_y)-width;
    [X,Y]=meshgrid(x,y);
    filter=sqrt(X.^2+Y.^2)<=maxFrequency;

    %Multiply Filter with Fourier Transfrom and create
    %inverseFourierTransfrom to get the LowPass Image
    lpimg = ifft2(filter.*ft);
end

