
// Generated from ./SysYLexer.g4 by ANTLR 4.12.0

#pragma once


#include "antlr4-runtime.h"


namespace nnvm {


class  SysYLexer : public antlr4::Lexer {
public:
  enum {
    CONST = 1, INT = 2, FLOAT = 3, VOID = 4, IF = 5, ELSE = 6, WHILE = 7, 
    BREAK = 8, CONTINUE = 9, RETURN = 10, PLUS = 11, MINUS = 12, MUL = 13, 
    DIV = 14, MOD = 15, ASSIGN = 16, EQ = 17, NEQ = 18, LT = 19, GT = 20, 
    LE = 21, GE = 22, NOT = 23, AND = 24, OR = 25, BITAND = 26, BITOR = 27, 
    BITXOR = 28, BITNOT = 29, BITSHL = 30, BITSHR = 31, L_PAREN = 32, R_PAREN = 33, 
    L_BRACE = 34, R_BRACE = 35, L_BRACKT = 36, R_BRACKT = 37, COMMA = 38, 
    SEMICOLON = 39, IDENT = 40, INTEGER_CONST = 41, FLOAT_CONST = 42, DecimalFloatingConstant = 43, 
    HexadecimalFloatingConstant = 44, WS = 45, LINE_COMMENT = 46, MULTILINE_COMMENT = 47
  };

  explicit SysYLexer(antlr4::CharStream *input);

  ~SysYLexer() override;


  std::string getGrammarFileName() const override;

  const std::vector<std::string>& getRuleNames() const override;

  const std::vector<std::string>& getChannelNames() const override;

  const std::vector<std::string>& getModeNames() const override;

  const antlr4::dfa::Vocabulary& getVocabulary() const override;

  antlr4::atn::SerializedATNView getSerializedATN() const override;

  const antlr4::atn::ATN& getATN() const override;

  // By default the static state used to implement the lexer is lazily initialized during the first
  // call to the constructor. You can call this function if you wish to initialize the static state
  // ahead of time.
  static void initialize();

private:

  // Individual action functions triggered by action() above.

  // Individual semantic predicate functions triggered by sempred() above.

};

}  // namespace nnvm
