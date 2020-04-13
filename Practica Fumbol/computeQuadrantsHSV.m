function [maxh, maxs] = computeQuadrantsHSV(mh, ms, im, nbins, index, maxh, maxs)
%divideix la imatge en 4, computa els histogrames, els compara amb
%l'histograma del patró i estableix la distancia mínima trobada després 
%d'analitzar totes les subimatges.
%Aquest procès es repeteix 4 cops.
        if index < 4
        [q0,q1,q2,q3] = divideix(im);
        
        [h, s] = histcountHS(q0, nbins);
        [sumh, sums] = chiSquare(mh, ms, h, s, nbins, 0, 0);
        [maxh, maxs] = setMinimum(maxh, maxs, sumh, sums);
        
        [h, s] = histcountHS(q1, nbins);
        [sumh, sums] = chiSquare(mh, ms, h, s, nbins, 0, 0);
        [maxh, maxs] = setMinimum(maxh, maxs, sumh, sums);
        
        [h, s] = histcountHS(q2, nbins);
        [sumh, sums] = chiSquare(mh, ms, h, s, nbins, 0, 0);
        [maxh, maxs] = setMinimum(maxh, maxs, sumh, sums);
        
        [h, s] = histcountHS(q3, nbins);
        [sumh, sums] = chiSquare(mh, ms, h, s, nbins, 0, 0);
        [maxh, maxs] = setMinimum(maxh, maxs, sumh, sums);
        
        [maxh, maxs] = computeQuadrants(mh, ms, q0, nbins, index+1, maxh, maxs);
        [maxh, maxs] = computeQuadrants(mh, ms, q1, nbins, index+1, maxh, maxs);
        [maxh, maxs] = computeQuadrants(mh, ms, q2, nbins, index+1, maxh, maxs);
        [maxh, maxs] = computeQuadrants(mh, ms, q3, nbins, index+1, maxh, maxs);

        end
end