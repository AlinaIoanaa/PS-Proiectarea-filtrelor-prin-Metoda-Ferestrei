clc ;
clear all ;
close all ;
  

% a)

M = 16;

figure( 'Name', 'ex1 Sub a.' )

subplot( 3, 3, 1 ) 
f = boxcar( M ) ;
stem( f ) ;
title( 'Dreptunghiulara' ) ;

subplot( 3, 3, 2 ) 
f = triang( M ) ;
stem( f ) ;
title( 'Triunghiulara' ) ;

subplot( 3, 3, 3 )
f = blackman( M ) ;
stem( f ) ;
title( 'Blackman' ) ;

subplot( 3, 3, 4 )
f = chebwin( M, 95 ) ;
stem( f ) ;
title( 'Cebisev' ) ;

subplot( 3, 3, 5 )
f = hamming( M ) ;
stem( f ) ;
title( 'Hamming' ) ;

subplot( 3, 3, 6 )
f = hanning( M ) ;
stem( f ) ;
title( 'Hanning' ) ;

subplot( 3, 3, 7 ) 
f = kaiser( M, 8) ;
stem( f ) ;
title( 'Kaiser' ) ;

subplot( 3, 3, 8 )
f = lanczos( M, 2 ) ; 
stem( f ) ;
title( 'Lanczos' ) ;

subplot( 3, 3, 9 ) 
f = tukeywin( M, 0.60 ) ;
stem( f ) ;
title( 'Tuckey' ) ;

% b)

figure( 'Name', 'ex1 Sub b.' )
subplot( 3, 3, 1 )
f = boxcar( M ) ;
f = f / sum( f ) ;                                     % normare
[ F, omega ] = freqz( f ) ;                            % calcul raspuns in frecventa 
plot( omega, 20 * log10( abs( F ) ) );
title( 'Dreptunghiulara' ) ;

subplot( 3, 3, 2 )
f = triang( M ) ;
f = f / sum( f ) ;                                     % normare
[ F, omega ] = freqz( f ) ;                            % calcul raspuns in frecventa 
plot( omega, 20 * log10( abs( F ) ) );
title( 'Triunghiulara' ) ;

subplot( 3, 3, 3 )
f = blackman( M ) ;
f = f / sum( f ) ;                                     % normare
[ F, omega ] = freqz( f ) ;                            % calcul raspuns in frecventa 
plot( omega, 20 * log10( abs( F ) ) );
title( 'Blackman' ) ;

subplot( 3, 3, 4 )
f = chebwin( M ) ;
f = f / sum( f ) ;                                     % normare
[ F, omega ] = freqz( f ) ;                            % calcul raspuns in frecventa 
plot( omega, 20 * log10( abs( F ) ) );
title( 'Cebisev' ) ;

subplot( 3, 3, 5 )
f = hamming( M ) ;
f = f / sum( f ) ;                                     % normare
[ F, omega ] = freqz( f ) ;                            % calcul raspuns in frecventa 
plot( omega, 20 * log10( abs( F ) ) );
title( 'Hamming' ) ;

subplot( 3, 3, 6 )
f = hanning( M ) ;
f = f / sum( f ) ;                                     % normare
[ F, omega ] = freqz( f ) ;                            % calcul raspuns in frecventa 
plot( omega, 20 * log10( abs( F ) ) );
title( 'Hanning' ) ;

subplot( 3, 3, 7 )
f = kaiser( M ) ;
f = f / sum( f ) ;                                     % normare
[ F, omega ] = freqz( f ) ;                            % calcul raspuns in frecventa 
plot( omega, 20 * log10( abs( F ) ) );
title( 'Kaiser' ) ;

subplot( 3, 3, 8 )
f = lanczos( M, 2 ) ;
f = f / sum( f ) ;                                     % normare
[ F, omega ] = freqz( f ) ;                            % calcul raspuns in frecventa 
plot( omega, 20 * log10( abs( F ) ) );
title( 'Lanczos' ) ;

subplot( 3, 3, 9 )
f = tukeywin( M ) ;
f = f / sum( f ) ;                                     % normare
[ F, omega ] = freqz( f ) ;                            % calcul raspuns in frecventa 
plot( omega, 20 * log10( abs( F ) ) );
title( 'Tuckey' ) ;

% c)
% 