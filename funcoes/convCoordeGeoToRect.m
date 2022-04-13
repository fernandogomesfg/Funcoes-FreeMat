function convCoordeGeoToRect (ponto1, ponto2)
    printf('Tendo coordenadas geográficas de um ponto, calcular as suas respectivas coordenadas cartesianas \n')
    printf('Recebe um vector seis elementos \n')
    printf('Formato do vetor: [latG latM latS longG longM longS]\n')
    printf('Feito por Fernando Gomes\n\n')
    
    if(nargin ~= 2)
        error('A funcao convCoordeGeoToRect deve receber exactamente 2 argumento')
    end
    
    dimPonto1 = size(ponto1);
    dimPonto2 = size(ponto2);
    if(~((dimPonto1(1) == 1 & dimPonto1(2) == 3) | (dimPonto1(1) ==  3 & dimPonto1(2) == 1)))
        error('A dimensao do vector no ponto inicial deve de 1x3 ou 3x1')
    end
    
    if(~((dimPonto2(1) == 1 & dimPonto2(2) == 3) | (dimPonto2(1) ==  3 & dimPonto2(2) == 1)))
        error('A dimensao do vector no ponto final deve de 1x3 ou 3x1')
    end
    
    %extracao das coordenadas dos pontos
    latitude = [ponto1(1) ponto1(2) ponto1(3)];
    longitude = [ponto2(1) ponto2(2) ponto2(3)];
    
    
    
   
    
    %coordenadas decimais
    %latitudes do ponto 
    if((latitude(1) < 0)  | (latitude(2) < 0) | (latitude(3) < 0))
        latDecimal = -1 * ((abs(latitude(1))) + (abs(latitude(2))/60) + (abs(latitude(3))/3600));
    else
        lat1Decimal = ((latitude(1)) + (latitude(2)/60) + (latitude(3)/3600));
    end
    
    %longitude do ponto
    if((longitude(1) < 0)  | (longitude(2) < 0) | (longitude(3) < 0))
        lonDecimal = -1 * ((abs(longitude(1))) + (abs(longitude(2))/60) + (abs(longitude(3))/3600));
    else
        lonDecimal = ((longitude(1)) + (longitude(2)/60) + (longitude(3)/3600));
    end
    
    
    
    
    
    
    
    
    
    r = 6371;
    
    x = r * cosd(latDecimal) * cosd(lonDecimal);
    y = r * cosd(latDecimal) * sind(lonDecimal);
    z = r * sind(latDecimal);
    
    printf('X = %.3f km\n' ,x)
    printf('Y = %.3f km\n' ,y)
    printf('Z = %.3f km\n' ,z)
    
    
    
    
    