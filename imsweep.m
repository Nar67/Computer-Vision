function [rmse, KLdiv] = imsweep(pattern,im)
%IMSWEEP Makes a sweep of all image returning minimum RMSE and KLDiv
%   This functions sweeps all image with a pattern and checks for
%   likeliness in histcounts. It returns the values for root mean squared
%   error and KL divergence of the most similar subimage
[pattern_rows, pattern_cols, ~] = size(pattern);
[im_rows, im_cols, ~] = size(im);
rmse = 1;
KLdiv = 20;
for row = floor(pattern_rows/2) +1:(im_rows-floor(pattern_rows/2))
	for col = floor(pattern_cols/2) +1:(im_cols-floor(pattern_cols/2))
		subim = im(row-floor(pattern_rows/2):row+floor(pattern_rows/2), col-floor(pattern_cols/2):col+floor(pattern_cols/2), :);
		[rmse_tmp, KLdiv_tmp] = imCompare(pattern, subim);
		rmse = min([rmse, rmse_tmp]);
		KLdiv = min([KLdiv, KLdiv_tmp]);
	end
end
end

