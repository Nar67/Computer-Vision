function [minr, minb] = setMinimum(minr, minb, sumr, sumb)
    if sumr < minr && sumb < minb
        minr = sumr;
        minb = sumb;
    end
end
