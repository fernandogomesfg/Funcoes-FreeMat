function raio = raio_do_paralelo(latitude)
    %calculo de latitude decimal
    latitudeDecimal = latitude(1) + latitude(2)/60 + latitude(3)/3600;
    
    R = 6371;
    
    raio = R * cosd(latitudeDecimal);
    