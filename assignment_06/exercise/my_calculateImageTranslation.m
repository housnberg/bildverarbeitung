function [ tx,ty ] = my_calculateImageTranslation( pyramid0, pyramid1, levels )
%MY_CLACULATEIMAGETRANSLATION Summary of this function goes here
%   Detailed explanation goes here
    %align images in scale space
     
    tx = 0;
    ty = 0;
    e = Inf(1);
    j = levels;
    for i=1:levels
        for x=(tx-1):(tx+1)
            for y=(ty-1):(ty+1)
               %pyramide 1 verschieben und unterschied zu pyramide 0
               %berechnen
               a = circshift(pyramid1{j},[x,y]);
               e_tmp = sum(pyramid0{j}(:) - a(:));
               if e_tmp == 0
                   e_tmp = Inf(1);
               end
               %Prüfen ob neuer Fehler geringer ist, falls ja verschiebung
               %übernehmen
               if e_tmp < e
                   e = e_tmp;
                   tx = tx+x;
                   ty = ty+y;
               end
            end
        end
       j = j-1;
    end

end

