function [ deltaB, deltaS ] = PS_Tema3_a ( h, omegab, omegas )

grila_frecv1 = 0 :omegab / 1000 : omegab ;
H1 = freqz( h, 1, grila_frecv1 ) ;

grila_frecv2 = omegas : pi / 1000 : pi ;
H2 = freqz( h, 1, grila_frecv2 ) ;

deltaB = max( abs( 1 - abs( H1 ) ) ) ;
deltaS = max( abs( 0 - abs( H2 ) ) ) ;

end