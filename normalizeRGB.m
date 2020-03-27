function [normalized] = normalizeRGB(im)
%NORMALIZERGB Normalitza imatge rgb
%   Normalitza una imatge rgb com a la sessio 2
r=im(:,:,1);
g=im(:,:,2);
b=im(:,:,3);
I = (double(r) +double(g) + double(b));
Rn = double(r)./I;
Gn = double(g)./I;
Bn = double(b)./I;
normalized=cat(3, Rn,Gn,Bn);
end

