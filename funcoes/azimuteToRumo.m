function azimuteToRumo(angulo)
    printf('Dado AZIMUTE de um ponto, calcular a seu RUMO \n')
    printf('Recebe o angulo em decimais \n')
    printf('Feito por Fernando Gomes\n\n')
    
    if(nargin ~= 1)
        error('A funcao convCoordeGeoToRect deve receber exactamente 1 argumento')
    end
    
   
    
    if((angulo >= 0) & (angulo < 90))
        rumo = angulo;
        printf('O angulo inserido eh: %.2f graus\n' ,angulo);
        printf('O seu rumo eh: %.2f graus (NE)\n:' ,rumo); 
    else if((angulo >= 90) & (angulo < 180))
            rumo = 180 - angulo;
            printf('O angulo inserido eh: %.2f graus\n' ,angulo);
            printf('O seu rumo eh: %.2f graus (SE)\n:' ,rumo);
    else if((angulo >= 180) & (angulo < 270))
            rumo = 180 - angulo;
            printf('O angulo inserido eh: %.2f graus\n' ,angulo);
            printf('O seu rumo eh: %.2f graus (SO)\n:' ,rumo);
    else if((angulo >= 270) & (angulo < 360))
            rumo = 360 - angulo;
            printf('O angulo inserido eh: %.2f graus\n' ,angulo);
            printf('O seu rumo eh: %.2f graus (NO)\n:' ,rumo);
        else
            printf('O angulo inserido e invalido');
            printf('Insira angulo que varia 0 - 180 graus');
        end
        end
        end
    end
            
            
