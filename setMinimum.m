function [rmse, kldiv] = setMinumum(rmse, kldiv, rm, kl)
	if rm < rmse
		rmse = rm;
	end
	if kl < kldiv
		kldiv = kl;
	end
end