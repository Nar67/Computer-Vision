function [maxr, maxb] = setMinimum(maxr, maxb, sumr, sumb)
    if sumr < maxr && sumb < maxb
        maxr = sumr;
        maxb = sumb;
    end
end
