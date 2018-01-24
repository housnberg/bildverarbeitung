function [ tx,ty ] = my_calculateImageTranslation( pyramid0, pyramid1, levels )
%MY_CLACULATEIMAGETRANSLATION Summary of this function goes here
%   Detailed explanation goes here
    %align images in scale space
     
    tx = 0; %  müsste 69 als Ergebnis haben
    ty = 0; %  müsste -7 als Ergebnis haben
    e = Inf(1);
    while (levels>0)
       for x=(tx-1):(tx+1)
            for y=(ty-1):(ty+1)
                e_tmp = my_imageDifference(pyramid0{levels},pyramid1{levels}, tx,ty);
                if e_tmp < e
                   e = e_tmp;
                   tx = x;
                   ty = y;
               end
            end
       end
       levels = levels - 1;
    end

end

