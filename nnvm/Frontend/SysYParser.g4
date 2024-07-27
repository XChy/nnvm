parser grammar SysYParser;

options {
	tokenVocab = SysYLexer;
}

program: compUnit;

compUnit: (funcDef | decl)+ EOF;

decl: constDecl | varDecl;

constDecl: CONST btype constDef (COMMA constDef)* SEMICOLON;

btype: INT | FLOAT;

constDef:
	IDENT (L_BRACKT constExp R_BRACKT)* ASSIGN constInitVal;

constInitVal:
	constExp
	| L_BRACE ((constInitVal (COMMA constInitVal)*)?) R_BRACE;

varDecl: btype varDef (COMMA varDef)* SEMICOLON;

varDef: IDENT (L_BRACKT constExp R_BRACKT)* (ASSIGN initVal)?;

initVal: exp | L_BRACE ( initVal (COMMA initVal)*)? R_BRACE;

funcDef: funcType IDENT L_PAREN funcFParams? R_PAREN block;

funcType: VOID | INT | FLOAT;

funcFParams: funcFParam (COMMA funcFParam)*;

funcFParam:
	btype IDENT (L_BRACKT R_BRACKT (L_BRACKT exp R_BRACKT)*)?;

block: L_BRACE blockItem* R_BRACE;

blockItem: decl | stmt;

returnStmt: RETURN exp? SEMICOLON;

forInit: ( (btype varDef (COMMA varDef)*) | (exp (COMMA exp)*))?;

forUpdate: (exp (COMMA exp)*)?;

stmt:
	exp? SEMICOLON
	| block
	| IF L_PAREN exp R_PAREN stmt (ELSE stmt)?
	| WHILE L_PAREN exp R_PAREN stmt
	| FOR L_PAREN forInit SEMICOLON exp SEMICOLON forUpdate R_PAREN stmt
	| BREAK SEMICOLON
	| CONTINUE SEMICOLON
	| returnStmt;

exp:
	L_PAREN exp R_PAREN
	| lVal (SELF_MINUS | SELF_PLUS)
	| lVal
	| number
	| call
	| (SELF_MINUS | SELF_PLUS) lVal
	| unaryOp exp
	| exp (MUL | DIV | MOD) exp
	| exp (PLUS | MINUS) exp
	| exp (BITSHL | BITSHR) exp
	| exp (LT | GT | LE | GE) exp
	| exp (EQ | NEQ) exp
	| exp BITAND exp
	| exp BITXOR exp
	| exp BITOR exp
	| exp AND exp
	| exp OR exp
	| lVal (
		ASSIGN
		| PLUS_ASSIGN
		| SUB_ASSIGN
		| MULT_ASSIGN
		| DIV_ASSIGN
		| MOD_ASSIGN
		| AND_ASSIGN
		| OR_ASSIGN
		| XOR_ASSIGN
		| SHL_ASSIGN
		| SHR_ASSIGN
	) exp;

call: IDENT L_PAREN funcRParams? R_PAREN;

lVal: IDENT (L_BRACKT exp R_BRACKT)*;

number: INTEGER_CONST | FLOAT_CONST;

unaryOp: PLUS | MINUS | (NOT | BITNOT);

funcRParams: param (COMMA param)*;

param: exp;

constExp: exp;