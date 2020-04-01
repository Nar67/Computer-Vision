function [rmse, kldiv] = computeQuadrants(pattnorm, im, index, rmse, kldiv)
	if index < 3
		[q0,q1,q2,q3] = divideix(im);
		[rm, kl] = imCompare(pattnorm, q0);
	    [rmse, kldiv] = setMinimum(rmse, kldiv, rm, kl);
	    
	    [rm, kl] = imCompare(pattnorm, q1);
	    [rmse, kldiv] = setMinimum(rmse, kldiv, rm, kl);
	    
	    [rm, kl] = imCompare(pattnorm, q2);
	    [rmse, kldiv] = setMinimum(rmse, kldiv, rm, kl);
	    
	    [rm, kl] = imCompare(pattnorm, q3);
	    [rmse, kldiv] = setMinimum(rmse, kldiv, rm, kl);
                
        [rmse, kldiv] = computeQuadrants(pattnorm,q0,index+1,rmse, kldiv);
	    [rmse, kldiv] = computeQuadrants(pattnorm,q1,index+1,rmse, kldiv);
	    [rmse, kldiv] = computeQuadrants(pattnorm,q2,index+1,rmse, kldiv);
	    [rmse, kldiv] = computeQuadrants(pattnorm,q3,index+1,rmse, kldiv);
	end
end