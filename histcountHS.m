function [h_hist, s_hist] = histcountHS(im, nbins)
h=im(:,:,1);
s=im(:,:,2);
h_hist = histcounts(h, nbins, 'Normalization', 'probability');
s_hist = histcounts(s, nbins, 'Normalization', 'probability');
end
