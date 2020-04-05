function hsv = normalizeHSV(im)
%Normalitza una imatge en HSV amb v = 0 com a la sessió 2.
    h = im(:,:,1);
	s = im(:,:,2);
	v = im(:,:,3);
	v(:) = 0;
	hsv = cat(3,h,s,v);
end