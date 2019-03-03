M = 16 ;
omegab = 0.3 ;
omegat = 0.4 ;
omegas = 0.5 ;
    
h = fir1( M, omegat, chebwin( M + 1 ) ) ;

% H1
grila_frecv1 = 0 : omegab / 1000 : omegab ;    
H1 = freqz( h, 1, grila_frecv1 ) ;

% H2
grila_frecv2 = omegas : pi / 1000 : pi ;    
H2 = freqz( h, 1, grila_frecv2 ) ;

% delta
deltaB = max( abs( 1 - abs( H1 ) ) ) ;
deltaS = max( abs( 0 - abs( H2 ) ) ) ;

deltaB + deltaS
