function distancia_esferica(ponto1, ponto2)
    printf('Calcula a distancia esferica entre dois prontos np globo\n')
    printf('Recebe dois vectores com seis elementos cada\n')
    printf('Formato do vetor: [latG latM latS longG longM longS]\n')
    printf('Feito por Fernando Gomes\n\n')
    
    if(nargin ~= 2)
        error('A funcao distancia_esferica deve receber exactamente dois argumentsos')
    end
    
    dimPonto1 = size(ponto1);
    dimPonto2 = size(ponto2);
    if(~((dimPonto1(1) == 1 & dimPonto1(2) == 6) | (dimPonto1(1) ==  6 & dimPonto1(2) == 1)))
        error('A dimensao do vector no ponto inicial deve se 1x6 ou 6x1')
    end
    
    if(~((dimPonto2(1) == 1 & dimPonto2(2) == 6) | (dimPonto2(1) ==  6 & dimPonto2(2) == 1)))
        error('A dimensao do vector no ponto final deve se 1x6 ou 6x1')
    end
    
    %extracao das coordenadas dos pontos
    lat1 = [ponto1(1) ponto1(2) ponto1(3)];
    lon1 = [ponto1(4) ponto1(5) ponto1(6)];
    
    lat2 = [ponto2(1) ponto2(2) ponto2(3)];
    lon2 = [ponto2(4) ponto2(5) ponto2(6)];
    
    %coordenadas decimais
    %latitudes do ponto inicial
    if((lat1(1) < 0)  | (lat1(2) < 0) | (lat1(3) < 0))
        lat1Decimal = -1 * ((abs(lat1(1))) + (abs(lat1(2))/60) + (abs(lat1(3))/3600))
    else
        lat1Decimal = ((lat1(1)) + (lat1(2)/60) + (lat1(3)/3600))
    end
    
    %longitudes do ponto inicial
    if((lon1(1) < 0)  | (lon1(2) < 0) | (lon1(3) < 0))
        long1Decimal = -1 * ((abs(lon1(1))) + (abs(lon1(2))/60) + (abs(lon1(3))/3600))
    else
        lon1Decimal = ((lon1(1)) + (lon1(2)/60) + (lon1(3)/3600))
    end
    
    %-----------------------------
    %coordenadas decimais
    %latitudes do ponto final
    if((lat2(1) < 0)  | (lat2(2) < 0) | (lat2(3) < 0))
        lat2Decimal = -1 * ((abs(lat2(1))) + (abs(lat2(2))/60) + (abs(lat2(3))/3600))
    else
        lat2Decimal = ((lat2(1)) + (lat2(2)/60) + (lat2(3)/3600))
    end
    
    %longitudes do ponto final
    if((lon2(1) < 0)  | (lon2(2) < 0) | (lon2(3) < 0))
        lon2Decimal = -1 * ((abs(lon2(1))) + (abs(lon2(2))/60) + (abs(lon2(3))/3600))
    else
        lon2Decimal = ((lon2(1)) + (lon2(2)/60) + (lon2(3)/3600))
    end
    
    %variacoes das longitudes
    deltaLong = lon2Decimal -lon1Decimal;
    
    d = acos(sind(lat1Decimal) * sind(lat2Decimal) + cosd(lat1Decimal) * cosd(lat2Decimal) * cosd(deltaLong)); %radianos por acos retorna  mesmo radianos
    
    D = 6371 * d; % distancia esferica entre o ponto 1 e ponto 2 em quilometros
    
    printf('Distancia esferica entre os pontos: %.3f km\n',D)
    
    
    
    
    
    