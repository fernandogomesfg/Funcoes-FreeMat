function Bursa-Wolfe (ppm, R, X, delta )
    clc
    printf('Tendo coordenadas geodésicas elipsoidais de um ponto, calcular as coordenadas cartesianas tridimensionais (X, Y, Z) \n')
    printf('Formato da Latitude: [latG latM latS]\n')
    printf('Formato da Longitude: [longG longM longS]\n')
    printf('Feito por Fernando Gomes\n\n')
    
    if(nargin ~= 4)
        error('A funcao convCoordGeoEliToCoordCartTrid deve receber exactamente 4 argumentos')
    end
    
    R = 