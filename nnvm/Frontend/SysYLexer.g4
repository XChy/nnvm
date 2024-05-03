
lexer grammar SysYLexer;

//关键字
CONST : 'const';
INT : 'int';
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

//需要扔掉的空白字符
WS : [ \r\n\t]+ -> skip;
//需要扔掉的注释
LINE_COMMENT : '//' .*? '\n' -> skip;

//需要扔掉的多行注释
MULTILINE_COMMENT : '/*' .*? '*/' -> skip;

