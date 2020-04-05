function [minred, minblue] = computeQuadrants(model_red, model_blue, im, nbins, index, minred, minblue)
%divideix la imatge en 4, computa els histogrames, els compara amb
%l'histograma del patró i estableix la distancia mínima trobada després 
%d'analitzar totes les subimatges.
%Aquest procès es repeteix 4 cops.
        if index < 4
            [q0,q1,q2,q3] = divideix(im);

            [red, blue] = histcountRB(q0, nbins);
            [sumred, sumblue] = chiSquare(model_red, model_blue, red, blue, nbins, 0, 0);
            [minred, minblue] = setMinimum(minred, minblue, sumred, sumblue);

            [red, blue] = histcountRB(q1, nbins);
            [sumred, sumblue] = chiSquare(model_red, model_blue, red, blue, nbins, 0, 0);
            [minred, minblue] = setMinimum(minred, minblue, sumred, sumblue);

            [red, blue] = histcountRB(q2, nbins);
            [sumred, sumblue] = chiSquare(model_red, model_blue, red, blue, nbins, 0, 0);
            [minred, minblue] = setMinimum(minred, minblue, sumred, sumblue);

            [red, blue] = histcountRB(q3, nbins);
            [sumred, sumblue] = chiSquare(model_red, model_blue, red, blue, nbins, 0, 0);
            [minred, minblue] = setMinimum(minred, minblue, sumred, sumblue);

            [minred, minblue] = computeQuadrants(model_red, model_blue, q0, nbins, index+1, minred, minblue);
            [minred, minblue] = computeQuadrants(model_red, model_blue, q1, nbins, index+1, minred, minblue);
            [minred, minblue] = computeQuadrants(model_red, model_blue, q2, nbins, index+1, minred, minblue);
            [minred, minblue] = computeQuadrants(model_red, model_blue, q3, nbins, index+1, minred, minblue);
        end
end