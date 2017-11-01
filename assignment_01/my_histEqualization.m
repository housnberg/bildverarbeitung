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

for r = 1:height
    for c = 1:width
        imgGray(r, c) = equalized(imgGray(r, c) + 1);
    end
end

imgHE = imgGray;

end

