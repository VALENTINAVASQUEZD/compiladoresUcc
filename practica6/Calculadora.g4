grammar Calculadora;

prog: expresion EOF ;

expresion
    : expresion ('+'|'-') expresion        
    | expresion ('*'|'/') expresion        
    | expresion '^' expresion              
    | '-' expresion                        
    | '(' expresion ')'                    
    | funcion                              
    | NUMBER                               
    ;

funcion
    : IDENT '(' expresion ')'              
    ;

NUMBER : [0-9]+ ('.' [0-9]+)? ;
IDENT  : [a-zA-Z_][a-zA-Z0-9_]* ;
WS     : [ \t\r\n]+ -> skip ;
