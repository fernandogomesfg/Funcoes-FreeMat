function convCoordeGeoToRect (lat, lon)
    printf('Tendo coordenadas geográficas de um ponto, calcular as suas respectivas coordenadas cartesianas \n')
    printf('Recebe um vector seis elementos \n')
    printf('Formato do vetor: [latG latM latS longG longM longS]\n')
    printf('Feito por Fernando Gomes\n\n')
    
    if(nargin ~= 1)
        error('A funcao convCoordeGeoToRect deve receber exactamente 1 argumento')
    end