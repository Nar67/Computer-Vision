function sum = chiSquareSimple(hc, h, nbins, sum)
	for i = 1:nbins
		sum = sum + ((hc(i) - h(i))^2/(hc(i)+h(i)));
	end
end