function [maxred, maxblue] = setMinimum(maxred, maxblue, sumred, sumblue)
    if sumred < maxred
        maxred = sumred;
    end
    if sumblue < maxblue
        maxblue = sumblue;
    end
end
