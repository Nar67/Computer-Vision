% Creem una  funci� per normalitzar els colors red i blue d'una imatge i, 
% per tant, els colors no es vegin afectats per la il�luminaci� d'aquesta. 
% El que obtindrem ser� una matriu de 3 dimesions rb amb dos plans on al 
% primer hi trobem el color red i al segon el blue, ambd�s normalitzats.

function [rb] = NormalizeRB(im)
    [rows, cols, ~] = size(im);
    im = double(im);
    rgb = im(:,:,1) + im(:,:,2) + im(:,:,3);
    rb = uint8(zeros(rows,cols,2));
    rb(:,:,1) = uint8(255*im(:,:,1)./rgb); 
    rb(:,:,2) = uint8(255*im(:,:,3)./rgb); 
end