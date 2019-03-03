clc ;
clear all ;
close all ;

% a)
M = 16 ;
omegat = 0.4 ; 

figure
f = boxcar( M + 1 ) ;
h = fir1( M, omegat, 'low', f ) ;
freqz( h ) ;
title( 'Dreptunghiulara' ) ;

figure
f = triang( M + 1 ) ;
h = fir1( M, omegat, 'low', f ) ;
freqz( h ) ;
title( 'Triunghiulara' ) ;

figure
f = blackman( M + 1 ) ;
h = fir1( M, omegat, 'low', f ) ; 
freqz( h ) ;
title( 'Blackman' ) ;

figure
f = chebwin( M + 1, 85 ) ;
h = fir1( M, omegat, 'low', f ) ;
freqz( h ) ;
title( 'Cebisev' ) ;

figure
f = hamming( M + 1 ) ;
h = fir1( M, omegat, 'low', f ) ;
freqz( h ) ;
title( 'Hamming' ) ;

figure
f = hanning( M + 1 ) ;
h = fir1( M, omegat, 'low', f ) ;
freqz( h ) ;
title( 'Hanning' ) ;

figure
f = kaiser( M + 1 ) ;
h = fir1( M, omegat, 'low', f ) ;
freqz( h ) ;
title( 'Kaiser' ) ;

figure
f = lanczos( M + 1 , 2 ) ;
h = fir1( M, omegat, 'low', f ) ;
freqz( h ) ;
title( 'Lanczos' ) ;

figure
f = tukeywin( M + 1, 45 ) ;
h = fir1( M, omegat, 'low', f ) ;
freqz( h ) ;
title( 'Tuckey' ) ;

%b)

figure( 'Name',  'ex2 b. M = 16' ) ;
f = hanning( M + 1 ) ;
h = fir1( M, omegat, 'low', f ) ;
freqz( h ) ;
title( 'Hanning 16' ) ;


M = 24 ;
figure( 'Name',  'ex2 b. M = 24' ) ;
f = hanning( M + 1 ) ;
h = fir1( M, omegat, 'low', f ) ;
freqz( h ) ;
title( 'Hanning 24' ) ; 


M = 32 ;
figure( 'Name', 'ex2 b. M = 32' ) ;
f = hanning( M + 1 ) ;
h = fir1( M, omegat, 'low', f ) ;
freqz( h ) ;
title( 'Hanning 32' ) ;
