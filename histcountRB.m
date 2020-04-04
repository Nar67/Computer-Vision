function [red_hist, blue_hist] = histcountRB(im, nbins)
%histRB Plot RB d'una imatge
%   Pren una imatge rb i en fa el plot dels colors RB per separat en un
%   gr�fic de barres
r=im(:,:,1);
b=im(:,:,3);
red_hist = histcounts(r, nbins, 'Normalization', 'probability');
%hold on
blue_hist = histcounts(b, nbins, 'Normalization', 'probability');
end
