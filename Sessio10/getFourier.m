function [fourier] = getFourier(im, ndesc)
im = imresize(im,1/4);
im = rgb2gray(im);
br = imbinarize(im);
br = imcomplement(br);


%obtenim el contorn
ero = imerode(br, strel('disk',1));
cont = xor(ero,br);

%obtenim les coordenades del contorn
[fila, col] = find(br, 1); %busquem el primer píxel
B = bwtraceboundary(br, [fila, col], 'E'); %direcció est a l'atzar
%B conté les coordenades


%centrem coordenades
mig = mean(B);
B(:,1) = B(:,1) - mig(1);
B(:,2) = B(:,2) - mig(2);

%convertim les coordenades a complexes
s = B(:,1) + 1i*B(:,2);

%cal que la dimensió del vector sigui parell
[mida, ~]=size(B);
if(mida/2~=round(mida/2))
    s(end+1,:)=s(end,:); %dupliquem l'ultim
    mida=mida+1;
end
%calculem la Fast Fourier Transform
z = fft(s);

tmp = z;
tmp(ndesc+1:end-ndesc) = 0; %eliminem els del mig perquè es duplica l'espectre
% ho displaiem logaritmic perquè sinó no es veu res
logz = log(abs(tmp));

fourier = logz(1:ndesc,:);
fourier = fourier.';
end

