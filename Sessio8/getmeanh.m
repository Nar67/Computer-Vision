function res = getmeanh(aux)
    deg = aux * (360);
    rad = deg * (pi / 180);
    cmean = mean(cos(rad));
    smean = mean(sin(rad));
    var = atan(smean/cmean);
    ddeg = var * (180/pi);
    res = mod(ddeg,180) /(180);
end
