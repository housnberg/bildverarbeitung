function [ imgGrayMaxHist, maxHist ] = my_maxContrast( imgGray )
%MY_HISTOGRAMMAX Maximizes the image contrast.

%{
    Aus dem Histogramm lässt sich herauslesen, dass die Anzahl der hellen
    Grauwerte gestiegen ist (erkennbar durch den leichten Ausschlag im Bereich > 150).
    Außerdem ist das Bild im gesamten heller (Peak des Ausschlags im
    vergleich zum vorherigen Histogram niedriger).
%}

minImg = min(imgGray(:)); %get max value of image
maxImg = max(imgGray(:)); %get min value of image

imgGrayMaxHist = (imgGray - minImg) ./ (maxImg - minImg); %contrast stretching
maxHist = my_hist(imgGrayMaxHist);

end

