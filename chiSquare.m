function [sumred, sumblue] = chiSquare(model_red, model_blue, red, blue, nbins, sumred, sumblue)
for i = 1:nbins 
	sumred = sumred + ((model_red.Values(i) - red.Values(i))^2)/(model_red.Values(i)+red.Values(i)); 
	sumblue = sumblue + ((model_blue.Values(i) - blue.Values(i))^2)/(model_blue.Values(i)+blue.Values(i)); 
end
end