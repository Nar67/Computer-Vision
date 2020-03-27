function [red_hist, blue_hist] = histRB(im, nbins)
%histRB Plot RB d'una imatge
%   Pren una imatge rb i la fa el plot dels colors RB per separat en un
%   grafic de barres
r=im(:,:,1);
b=im(:,:,2);
red_hist = histogram(r, nbins, 'Normalization', 'probability','FaceColor', 'r');
hold on
blue_hist = histogram(b, nbins, 'Normalization', 'probability', 'FaceColor', 'b');
%[red_data, pixel_levelhistogram(r, nbins, 'Normalization', 'probability');

%[blue_data,pixel_levelb] =hisogram(b, nbins, 'Normalization', 'probability');
%red_bar = bar(pixel_levelr, red_data,'r');
%hold on;
%blue_bar = bar(pixel_levelb, blue_data,'b');
end

