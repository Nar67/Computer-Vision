function max = computeQuadrantsSimple(hc, im, nbins, index, max)
	if index < 4
		[q0,q1,q2,q3] = divideix(im);

		h = histcounts(q0,nbins, "Normalization", "probability");
		h = chiSquareSimple(hc,h,nbins,0);
		if h < max
			max = h;
		end

		h = histcounts(q1,nbins, "Normalization", "probability");
		h = chiSquareSimple(hc,h,nbins,0);
		if h < max
			max = h;
		end

		h = histcounts(q2,nbins, "Normalization", "probability");
		h = chiSquareSimple(hc,h,nbins,0);
		if h < max
			max = h;
		end

		h = histcounts(q3,nbins, "Normalization", "probability");
		h = chiSquareSimple(hc,h,nbins,0);
		if h < max
			max = h;
		end

		max = computeQuadrantsSimple(hc, q0, nbins, index+1, max);
		max = computeQuadrantsSimple(hc, q1, nbins, index+1, max);
		max = computeQuadrantsSimple(hc, q2, nbins, index+1, max);
		max = computeQuadrantsSimple(hc, q3, nbins, index+1, max);

	end


end