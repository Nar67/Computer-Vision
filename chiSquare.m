function [sumred, sumblue] = chiSquare(model_red, model_blue, red, blue, nbins, sumred, sumblue)
for i = 1:nbins 
	sumred = sumred + ((model_red(i) - red(i))^2)/(model_red(i)+red(i)); 
	sumblue = sumblue + ((model_blue(i) - blue(i))^2)/(model_blue(i)+blue(i)); 
end
end