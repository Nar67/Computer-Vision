function label = classify(im)

%carreguem el model
load('trainedModel.mat');

imb = imbinarize(im);

%extreiem les caracter�stiques
orientationHist = extractHOGFeatures(imb, 'CellSize',[4,4]);

%muntem la taula
t = table(orientationHist);

%realitzem la predicci�
label = trainedModel.predictFcn(t);
end
