function [ cimg ] = my_detectCircles( img, hSpaces, circleSizes )
%MY_DETECTCIRCLES Summary of this function goes here
%   Detailed explanation goes here
    
    cimg = img;
    colors = {'blue', 'green', 'yellow', 'cyan', 'magenta'};
    
    %{
        Hinweis: Da wir hier den Threshold programmatisch berechnen,
        werden manchmal mehr und manchmal weniger Circles gefunden als in der
        Musterloesung.
    %}
    
    %Alternative:
    %thresholds = [165, 155, 150, 150, 115];
    
    for cs=1:size(circleSizes, 2)
        threshold = max(max(hSpaces(:, :, cs))) - 10;
        %threshold = thresholds(cs);
        for x=1:size(cimg, 2)
            for y=1:size(cimg, 1)
                if hSpaces(x, y, cs) >= threshold
                    cimg = insertShape(cimg, 'circle', [y, x, circleSizes(cs)], 'LineWidth', 1, 'color', colors(cs));
                end
            end
        end
    end

end

