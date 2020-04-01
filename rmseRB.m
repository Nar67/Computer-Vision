function [rmse] = rmseRB(histModel_red, histModel_blue, imhist_red, imhist_blue)
%RMSERB Returns root mean squared error of two RB histograms

rmse_red = sqrt(mean((histModel_red - imhist_red).^2));
rmse_blue = sqrt(mean((histModel_blue - imhist_blue).^2));
rmse = (rmse_red + rmse_blue) /2;

end
