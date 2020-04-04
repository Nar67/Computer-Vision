function [chi] = imsweepHSV(pattern_h, pattern_s, im, nbins, sweep_rows, sweep_cols)
%IMSWEEPHSV Makes a sweep of all image returning minimum Chi Square distance
%   This functions sweeps all image with a pattern and checks for
%   likeliness in histcounts. It returns the chi squared distance
%   of the most similar subimage
chih = 20;
chis = 20;

[im_rows, im_cols, ~] = size(im);

img = rgb2hsv(im);
img = normalizeHSV(img);


for row = floor(sweep_rows/2) +1:(im_rows-floor(sweep_rows/2))
    for col = floor(sweep_cols/2) +1:(im_cols-floor(sweep_cols/2))
		subim = img(row-floor(sweep_rows/2):row+floor(sweep_rows/2), col-floor(sweep_cols/2):col+floor(sweep_cols/2), :);
        [h, v] = histcountsHS(subim, nbins)./numel(subim);
        chi_tmph = sum(((pattern_h - h).^2) ./ (pattern_h + h));
        chi_tmps = sum(((pattern_s - v).^2) ./ (pattern_s + v));
        if chi_tmph < chih && chi_tmps < chis
        	chih = chi_tmph;
        	chis = chi_tmps;
        end
	end
end
chi = (chih + chis) /2;
end

