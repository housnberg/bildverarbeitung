function [ imgGrayMaxHist, maxHist ] = my_maxContrast( imgGray )
%MY_HISTOGRAMMAX Maximizes the image contrast.

minImg = min(imgGray(:)); %get max value of image
maxImg = max(imgGray(:)); %get min value of image

imgGrayMaxHist = (imgGray - minImg) ./ (maxImg - minImg); %contrast stretching
maxHist = my_hist(imgGrayMaxHist);

end

