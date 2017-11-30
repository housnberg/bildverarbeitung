function my_plotFFT2D( img , figName)
%MY_PLOTFFT2D Summary of this function goes here
%   Detailed explanation goes here

%{
    displayfft2 erzeugt ein Diagram, das alle vorhandenen Frequenzen zeigt.
    Je heller ein Pixel im Diagram ist, desto höher ist die Frequenz.
    Die tieferen Frequenzen sind in der Mitte des Diagrams dargestellt und
    stärker vertreten als die höheren Frequenzen, deren Pixel dunkler sind.
    Zudem sind in dem Diagram zwei dominierende Richtungen erkennbar, die
    duch die Kanten des weißen Quadrates auf dem schwarzen Hintergrund
    entstehen.

    Quelle: http://matlabgeeks.com/tips-tutorials/how-to-do-a-2-d-fourier-transform-in-matlab/
            http://web.archive.org/web/20130513181427id_/http://sharp.bu.edu/~slehar/fourier/fourier.html#filtering
%}

figure('name', figName);
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
displayfft2(img);

end

