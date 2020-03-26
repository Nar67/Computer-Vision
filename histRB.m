function [red_bar, blue_bar] = histRB(im)
%histRB Plot RB d'una imatge
%   Pren una imatge rb i la fa el plot dels colors RB per separat en un
%   grafic de barres
r=im(:,:,1);
b=im(:,:,2);

[red_data, pixel_levelr]=imhist(r);
[blue_data,pixel_levelb] =imhist(b);
red_bar = bar(pixel_levelr, red_data,'r');
hold on;
blue_bar = bar(pixel_levelb, blue_data,'b');
end

