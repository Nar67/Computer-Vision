function aux = numDescriptors(mida,ss)
files = round(real(ss) + mida/2);
cols = round(imag(ss) + mida/2);
aux = logical(zeros(mida));
aux(sub2ind(size(aux), files, cols)) = 1;
end

