function label = classify(im)
%CLASSIFY Summary of this function goes here
%   Detailed explanation goes here
load('model.mat');

imb = imbinarize(im);
%Area
areas = bwarea(imb);
convexArea = bwarea(imbinarize(imsubtract(bwconvhull(imb), imb)));
%Transformada de Hough
longLines = houghTransform(im);
hough = [longLines.point1, longLines.point2, longLines.theta, longLines.rho];

%Orientació
orientationHist = extractHOGFeatures(imb, 'CellSize',[4,4]);
t = table(areas, convexArea, orientationHist, hough);


model = trainedModel.ClassificationSVM;
label = predict(model, t);
end

