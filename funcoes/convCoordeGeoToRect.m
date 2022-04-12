function convCoordeGeoToRect (lat, lon)
    printf('Tendo coordenadas geográficas de um ponto, calcular as suas respectivas coordenadas cartesianas \n')
    printf('Recebe um vector seis elementos \n')
    printf('Formato do vetor: [latG latM latS longG longM longS]\n')
    printf('Feito por Fernando Gomes\n\n')
    
    if(nargin ~= 1)
        error('A funcao convCoordeGeoToRect deve receber exactamente 1 argumento')
    end
    
    
    
    %extracao das coordenadas dos pontos
    latitude = [lat(1) lat(2) lat(3)];
    longitude = [lon(4) lon(5) lon(6)];
    
    %coordenadas decimais
    %latitudes do ponto 
    if((latitude(1) < 0)  | (latitude(2) < 0) | (latitude(3) < 0))
        latDecimal = -1 * ((abs(latitude(1))) + (abs(latitude(2))/60) + (abs(latitude(3))/3600));
    else
        lat1Decimal = ((latitude(1)) + (latitude(2)/60) + (latitude(3)/3600));
    end
    
    %longitude do ponto
    if((longitude(1) < 0)  | (longitude(2) < 0) | (longitude(3) < 0))
        longDecimal = -1 * ((abs(longitude(1))) + (abs(longitude(2))/60) + (abs(longitude(3))/3600));
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
    
    
    
    
    