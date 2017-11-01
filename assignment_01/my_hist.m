function [ hist ] = my_hist( imgGray )
%MY_HISTOGRAM calcuates the histogram of the image.
%Remember your image contains double values between [0-1].
%You might want to convert it back to uint8 values between [0-255].

imgGray = uint8(imgGray.*255);

[height, width] = size(imgGray);
histogram = zeros(256, 1);

for i = 1 : height
    for j = 1 : width
       tmp = imgGray(i, j) + 1;
       histogram(tmp) = histogram(tmp) + 1;
    end
end 

hist=histogram;

end

