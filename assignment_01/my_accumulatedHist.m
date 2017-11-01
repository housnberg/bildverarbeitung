function [ aHist ] = my_accumulatedHist( imgGray )
%MY_ACCUMULATEDHIST Calculate the NORMALIZED accumulated histogram

hist = my_hist(imgGray);

cdf(1, 1) = hist(1, 1);
for i=2:256
    cdf(i) = hist(i) + cdf(i - 1);
end

aHist = cdf;

minVal = min(aHist(:));
maxVal = max(aHist(:));
aHist = (aHist - minVal) ./ (maxVal - minVal);

end