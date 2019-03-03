function f = lanczos( M, L ) 
    f = zeros( M, 1 ) ;
    for n = 1 : 1 : M
        f( n ) = ( ( sin( 2 * pi * ( ( 2 * n - M + 1 ) / ( 2 * ( M - 1 ) ) ) ) ) / ( 2 * pi * ( 2 * n - M + 1 ) / ( 2 * ( M - 1 ) ) ) ) ^ L ;
    end
end