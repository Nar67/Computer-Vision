function [h] = histo(im, nbins)
	h = zeros(nbins);
	[rows, cols, ~] = size(im);
	for i = 1:rows
		for j = 1:cols
			x = floor(double(im(i,j,1))/nbins)+1;
			y = floor(double(im(i,j,2))/nbins)+1;
			h(x,y) = h(x,y)+1;
		end
	end
	h = h./(rows*cols);
end