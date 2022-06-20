function convCoordGeoEliToCoordCartTrid(lat, long, altiGeodesica, semi_eixo_maior, achatamento)
    clc
    printf('Tendo coordenadas geodésicas elipsoidais de um ponto, calcular as coordenadas cartesianas tridimensionais (X, Y, Z) \n')
    printf('Formato da Latitude: [latG latM latS]\n')
    printf('Formato da Longitude: [longG longM longS]\n')
    printf('Feito por Fernando Gomes\n\n')
    
    if(nargin ~= 5)
        error('A funcao convCoordGeoEliToCoordCartTrid deve receber exactamente 5 argumentos')
    end
    
    dimPonto1 = size(lat);
    dimPonto2 = size(long);
    if(~((dimPonto1(1) == 1 & dimPonto1(2) == 3) | (dimPonto1(1) ==  3 & dimPonto1(2) == 1)))
        error('A dimensao da latitude do ponto deve de 1x3 ou 3x1')
    end
    
    if(~((dimPonto2(1) == 1 & dimPonto2(2) == 3) | (dimPonto2(1) ==  3 & dimPonto2(2) == 1)))
        error('A dimensao da longitude do ponto deve de 1x3 ou 3x1')
    end
    
    
    %extracao das coordenadas dos pontos
    latitude = [lat(1) lat(2) lat(3)];
    longitude = [long(1) long(2) long(3)];
    
    
    
    %coordenadas decimais
    %latitudes do ponto 
    if((latitude(1) < 0)  | (latitude(2) < 0) | (latitude(3) < 0))
        latDecimal = -1 * ((abs(latitude(1))) + (abs(latitude(2))/60) + (abs(latitude(3))/3600));
    else
        latDecimal = ((latitude(1)) + (latitude(2)/60) + (latitude(3)/3600));
    end
    
    %longitude do ponto
    if((longitude(1) < 0)  | (longitude(2) < 0) | (longitude(3) < 0))
        lonDecimal = -1 * ((abs(longitude(1))) + (abs(longitude(2))/60) + (abs(longitude(3))/3600));
    else
        lonDecimal = ((longitude(1)) + (longitude(2)/60) + (longitude(3)/3600));
    end
    
    f = achatamento;
    a = semi_eixo_maior;
    h = altiGeodesica;
    
    e2 = 2*achatamento - achatamento^2;
    N = ( (a)/(1 -e2 * sind(latDecimal) * sind(latDecimal))^(1/2) );
    
    %impressao dos valores da Primeira excentricidade ao quadrado e Raio da Curvatura da seccao primeiro vertival
    printf('Primeira excentricidade ao quadrado = %.9f km\n' ,e2)
    printf('Raio de Curvatura da seccao primeiro vertical = %.3f km\n\n' ,N)
    
    %calculando as coordenadas
    x = (N + h) * cosd(latDecimal) * cosd(lonDecimal);
    y = (N + h) * cosd(latDecimal) * sind(lonDecimal);
    z = (N * (1 - e2) + h) * sind(latDecimal);
    
    
    %impressao dos valores das coordenadas cartesianas tridimensionais
    printf('Coordenadas Cartesianas Tridimensionais\n')
    printf('X = %.3f km\n' ,x)
    printf('Y = %.3f km\n' ,y)
    printf('Z = %.3f km\n' ,z)