function convCoordeGeoToRect (la, lo)
    printf('Tendo coordenadas geográficas de um ponto, calcular as suas respectivas coordenadas cartesianas \n')
    printf('Recebe um vector seis elementos \n')
    printf('Formato do vetor: [latG latM latS longG longM longS]\n')
    printf('Feito por Fernando Gomes\n\n')
    
    if(nargin ~= 1)
        error('A funcao convCoordeGeoToRect deve receber exactamente 1 argumento')
    end
    
    dimPonto1 = size(lat);
    if(~((dimPonto1(1) == 1 & dimPonto1(2) == 6) | (dimPonto1(1) ==  6 & dimPonto1(2) == 1)))
        error('A dimensao do vector no ponto deve de 1x6 ou 6x1')
    end
    
    %extracao das coordenadas dos pontos
    lat = [lat(1) lat(2) lat(3)];
    lon = [lon(4) lon(5) lon(6)];
    
    %coordenadas decimais
    %latitudes do ponto 
    if((lat(1) < 0)  | (lat(2) < 0) | (lat(3) < 0))
        latDecimal = -1 * ((abs(lat(1))) + (abs(lat(2))/60) + (abs(lat(3))/3600));
    else
        lat1Decimal = ((lat(1)) + (lat(2)/60) + (lat(3)/3600));
    end
    
    %longitude do ponto
    if((lon(1) < 0)  | (lon(2) < 0) | (lon(3) < 0))
        longDecimal = -1 * ((abs(lon(1))) + (abs(lon(2))/60) + (abs(lon(3))/3600));
    else
        lonDecimal = ((lon(1)) + (lon(2)/60) + (lon(3)/3600));
    end
    
    r = 6371;
    
    x = r * cosd(lat) * cosd(lon);
    y = r * cosd(lat) * sind(lon);
    z = r * sind(lat);
    
    printf('X = %.3f km\n' ,x)
    printf('Y = %.3f km\n' ,y)
    printf('Z = %.3f km\n' ,z)
    
    
    
    
    