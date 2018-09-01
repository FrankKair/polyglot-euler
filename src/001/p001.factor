USING: kernel math io prettyprint ;
IN: problem-001

: div? ( n -- n ) dup 3 mod 0 = [ dup 5 mod 0 = ] dip or [ drop 0 ] unless ;

: solve ( -- ) 0 1000 [ div? + ] each-integer . ;

MAIN: solve
