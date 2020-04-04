function [maxred, maxblue] = computeQuadrants(model_red, model_blue, im, nbins, index, maxred, maxblue)
        if index < 4
        [q0,q1,q2,q3] = divideix(im);
        
        [red, blue] = histcountRB(q0, nbins);
        [sumred, sumblue] = chiSquare(model_red, model_blue, red, blue, nbins, 0, 0);
        [maxred, maxblue] = setMinimum(maxred, maxblue, sumred, sumblue);
        
        [red, blue] = histcountRB(q1, nbins);
        [sumred, sumblue] = chiSquare(model_red, model_blue, red, blue, nbins, 0, 0);
        [maxred, maxblue] = setMinimum(maxred, maxblue, sumred, sumblue);
        
        [red, blue] = histcountRB(q2, nbins);
        [sumred, sumblue] = chiSquare(model_red, model_blue, red, blue, nbins, 0, 0);
        [maxred, maxblue] = setMinimum(maxred, maxblue, sumred, sumblue);
        
        [red, blue] = histcountRB(q3, nbins);
        [sumred, sumblue] = chiSquare(model_red, model_blue, red, blue, nbins, 0, 0);
        [maxred, maxblue] = setMinimum(maxred, maxblue, sumred, sumblue);
        
        [maxred, maxblue] = computeQuadrants(model_red, model_blue, q0, nbins, index+1, maxred, maxblue);
        [maxred, maxblue] = computeQuadrants(model_red, model_blue, q1, nbins, index+1, maxred, maxblue);
        [maxred, maxblue] = computeQuadrants(model_red, model_blue, q2, nbins, index+1, maxred, maxblue);
        [maxred, maxblue] = computeQuadrants(model_red, model_blue, q3, nbins, index+1, maxred, maxblue);

        end
end