function [dir] = absoluteDir(point)
if point == [0,1]
    dir = 0;
elseif point == [-1,1]
    dir = 1;
elseif point == [-1,0]
    dir = 2;
elseif point == [-1,-1]
    dir = 3;
elseif point == [0,1]
    dir = 4;
elseif point == [1,-1]
    dir = 5;
elseif point == [1,0]
    dir = 6;
else
    dir = 7;
end

