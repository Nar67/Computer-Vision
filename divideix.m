function [q0,q1,q2,q3] = divideix(im)
	[rows, cols, ~] = size(im);
	isevenR = rem(rows,2) == 0;
	isevenC = rem(cols,2) == 0;
	
	if isevenC == 1
		halfC = cols/2;
	else
		halfC = (cols-1)/2;
	end

	if isevenR == 1
		halfR = rows/2;
	else
		halfR = (rows-1)/2;
    end
	
	q0 = im(1:halfR, 1:halfC, :);
	q1 = im(1:halfR, (halfC+1):cols, :);
	q2 = im(halfR+1:rows, 1:halfC, :);
	q3 = im(halfR+1:rows, halfC+1:cols, :);
end