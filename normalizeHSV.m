function hsv = normalizeHSV(im)
    h = im(:,:,1);
	s = im(:,:,2);
	v = im(:,:,3);
	v(:) = 0;
	hsv = cat(3,h,s,v);
end