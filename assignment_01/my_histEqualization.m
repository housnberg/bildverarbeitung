function [ imgHE ] = my_histEqualization( imgGray, aHist )
%MY_HISTEQUALIZATION Changes the contrast by using
%histogram equlization. The function gets the original gray image and
%its normalized accumulated histogram.

aHist = aHist.';

imgGray = uint8(imgGray .* 255);
[height, width] = size(imgGray);

equalized = zeros(256, 1);
for i = 1:size(aHist)
    equalized(i) = round(aHist(i) * 255);
end

imgEq = uint8(zeros(height, width));

for i = 1:height
    for j = 1:width
        imgEq(i, j) = equalized(imgGray(i, j) + 1);
    end
end


imgHE = imgEq;

end