function [rmse, KLdiv] = imCompare(model, im)
%IMCOMPARE Compares two images
%   Returns Root mean squared error and KL divergence of given image with
%   given model histogram.
[model_red, model_blue] = histcountRB(model, 20);

[red, blue] = histcountRB(im, 20);

rmse = rmseRB(model_red, model_blue, red, blue);
KLdiv = (KLDiv(model_red, red) + KLDiv(model_blue, blue)) /2;
if isinf(KLdiv)
   KLdiv = (KLDiv(red, model_red) + KLDiv(model_blue, blue)) /2;
end
end

