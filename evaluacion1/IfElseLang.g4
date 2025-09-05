grammar IfElseLang;

program: statement+ EOF;

statement: assignment
         | ifStatement
         ;

assignment: ID ASSIGN expr SEMI;

ifStatement
    : IF LPAREN condition RPAREN LBRACE statement* RBRACE (ELSE (ifStatement | LBRACE statement* RBRACE))?
    ;

condition: expr operator expr;

expr
    : expr MUL expr
    | expr DIV expr
    | expr ADD expr
    | expr SUB expr
    | ID
    | NUMBER
    | LPAREN expr RPAREN
    ;

operator: LT | GT | GE | LE | EQ | NE;

IF: 'if';
ELSE: 'else';
LPAREN: '(';
RPAREN: ')';
LBRACE: '{';
RBRACE: '}';
SEMI: ';';
ASSIGN: '=';
LT: '<';
GT: '>';
GE: '>=';
LE: '<=';
EQ: '==';
NE: '!=';
ADD: '+';
SUB: '-';
MUL: '*';
DIV: '/';

ID: [a-zA-Z_][a-zA-Z_0-9]*;
NUMBER: [0-9]+;

WS: [ \t\r\n]+ -> skip;