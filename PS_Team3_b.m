clc ;
close all ;
clear all ;

omegab = 0.3 ;
omegas = 0.5 ;
M = 16 ;
% M = 23 ;
f = hanning( M + 1 ) ;

omegat = 0.4 ;

deltaB_ideal = 0.05 ;
deltaS_ideal = 0.05 ;


h = fir1( M , omegat, f ) ;
[ deltaB_real, deltaS_real ] = PS_Tema3_a( h, omegab, omegas ) ;


eroareB = deltaB_real - deltaB_ideal
eroareS = deltaS_real - deltaS_ideal

%daca eroare > 0 filtrul este invalid 
%daca eroarea < 0 putem spune ca, cu cat este mai apropiata de 0 cu atat filtrul
%are un ordin mai mic