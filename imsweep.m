function [chi] = imsweep(pattern_hist, im, nbins, sweep_rows, sweep_cols)
%IMSWEEP Makes a sweep of all image returning minimum Chi Square distance
%   This functions sweeps all image with a pattern and checks for
%   likeliness in histcounts. It returns the chi squared distance
%   of the most similar subimage
chi = 20;

[im_rows, im_cols, ~] = size(im);
im = im2double(im);
img = rgb2gray(im);
for row = floor(sweep_rows/2) +1:(im_rows-floor(sweep_rows/2))
    for col = floor(sweep_cols/2) +1:(im_cols-floor(sweep_cols/2))
		subim = img(row-floor(sweep_rows/2):row+floor(sweep_rows/2), col-floor(sweep_cols/2):col+floor(sweep_cols/2), :);
        hist_new = histcounts(subim, nbins)./numel(subim);
        chi_tmp = sum(((pattern_hist - hist_new).^2) ./ (pattern_hist + hist_new));
        chi = min([chi, chi_tmp]);
	end
end
end

