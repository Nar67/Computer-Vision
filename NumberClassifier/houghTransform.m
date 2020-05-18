function longLine = houghTransform(im)
%HOUGHTRANSFORM Summary of this function goes here
%   Detailed explanation goes here
bw = edge(im, 'canny');
[H, theta, rho] = hough(bw);
peaks = houghpeaks(H,5,'threshold',ceil(0.3*max(H(:))));

linies = houghlines(bw,theta,rho,peaks,'FillGap',7,'MinLength',5);
max_len = 0;
longk = 0;

for k = 1:length(linies)
    xy = [linies(k).point1; linies(k).point2];
    len = norm(linies(k).point1 - linies(k).point2);
    if (len > max_len)
        max_len = len;
        xy_long = xy;
        longk = k;
    end
end
longLine = linies(longk);
end

