function [minr, minb] = setMinimum(minr, minb, sumr, sumb)
%computa el m�nim entre dos valors. S'utilitza per guardar la dist�ncia
%m�nima entre els histogrames de la foto a comparar i la del patr�
%escollit. Es computen junts el color R i el B.
    if sumr < minr && sumb < minb
        minr = sumr;
        minb = sumb;
    end
end
