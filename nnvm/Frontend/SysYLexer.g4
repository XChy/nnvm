
lexer grammar SysYLexer;

//关键字
CONST : 'const';
INT : 'int';
FLOAT : 'float';
VOID: 'void';

IF : 'if';
ELSE : 'else';
WHILE : 'while';
BREAK : 'break';
CONTINUE : 'continue';
RETURN : 'return';

PLUS : '+';
MINUS : '-';
MUL : '*';
DIV : '/';
MOD : '%';
ASSIGN : '=';
EQ : '==';
NEQ : '!=';
LT : '<';
GT : '>';
LE : '<=';
GE : '>=';
NOT : '!';
AND : '&&';
OR : '||';
BITAND : '&';
BITOR : '|';
BITXOR : '^';
BITNOT : '~';
BITSHL : '<<';
BITSHR : '>>';

L_PAREN : '(';
R_PAREN : ')';
L_BRACE : '{';
R_BRACE : '}';
L_BRACKT : '[';
R_BRACKT : ']';
COMMA : ',';
SEMICOLON : ';';

//标识符
IDENT : [a-zA-Z_] [a-zA-Z_0-9]*;

//数字常量
INTEGER_CONST : '0' | [1-9] [0-9]* | '0' [0-7]* | ('0x'|'0X') [0-9a-fA-F]+;


FLOAT_CONST : DecimalFloatingConstant | HexadecimalFloatingConstant;

DecimalFloatingConstant
    :   FractionalConstant ExponentPart?
    |   DigitSequence ExponentPart
    ;

HexadecimalFloatingConstant
    :   HexadecimalPrefix HexadecimalFractionalConstant BinaryExponentPart
    |   HexadecimalPrefix HexadecimalDigitSequence BinaryExponentPart
    ;

fragment
FractionalConstant
    :   DigitSequence? '.' DigitSequence
    |   DigitSequence '.'
    ;

fragment
ExponentPart
    :   'e' Sign? DigitSequence
    |   'E' Sign? DigitSequence
    ;

fragment
Sign
    :   '+'
    |   '-'
    ;

fragment DigitSequence: DIGIT+;

fragment
HexadecimalDigit
    :   [0-9a-fA-F]
    ;

fragment
HexadecimalPrefix
    :   '0x'
    |   '0X'
    ;

fragment
HexadecimalFractionalConstant
    :   HexadecimalDigitSequence? '.' HexadecimalDigitSequence
    |   HexadecimalDigitSequence '.'
    ;

fragment
HexadecimalDigitSequence
    :   HexadecimalDigit+
    ;

fragment
BinaryExponentPart
    :   'P' Sign? DigitSequence
    |   'p' Sign? DigitSequence
    ;

fragment DIGIT : [0-9];

//需要扔掉的空白字符
WS : [ \r\n\t]+ -> skip;
//需要扔掉的注释
LINE_COMMENT : '//' .*? ('\n' | EOF) -> skip;

//需要扔掉的多行注释
MULTILINE_COMMENT : '/*' .*? '*/' -> skip;

