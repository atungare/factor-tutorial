! Copyright (C) 2016 Your name.
! See http://factorcode.org/license.txt for BSD license.
USING: kernel math.functions math.ranges sequences ;
IN: github.tutorial

<PRIVATE

: [2,b] ( n -- {2,...,n} ) 2 swap [a,b] ; inline

: multiple? ( a b -- ? ) swap divisor? ; inline

PRIVATE>

: prime? ( n -- ? ) [ sqrt [2,b] ] [ [ multiple? ] curry ] bi any? not ;
