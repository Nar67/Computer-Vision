function [minr, minb] = setMinimum(minr, minb, sumr, sumb)
%computa el mínim entre dos valors. S'utilitza per guardar la distància
%mínima entre els histogrames de la foto a comparar i la del patró
%escollit. Es computen junts el color R i el B.
    if sumr < minr && sumb < minb
        minr = sumr;
        minb = sumb;
    end
end
