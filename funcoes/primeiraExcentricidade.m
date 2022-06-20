function primeiraExcentricidade (achatamento)
    %Funcao responsavel por calcular a Primeira excentricidade ao quadrado:
    clc
    printf('Funcao responsavel por calcular a Primeira excentricidade ao quadrado\n')
    printf('Feito por Fernando Gomes\n\n')
    
    f = achatamento;
    e2 = (2 * f) - (f^2);
    
    %impressao dos valores
    printf('e2 = %.3f km\n' ,e2)
    