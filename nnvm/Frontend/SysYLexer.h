
// Generated from ./nnvm/Frontend/SysYLexer.g4 by ANTLR 4.12.0

#pragma once


#include "antlr4-runtime.h"


namespace nnvm {


class  SysYLexer : public antlr4::Lexer {
public:
  enum {
    CONST = 1, INT = 2, FLOAT = 3, VOID = 4, IF = 5, ELSE = 6, WHILE = 7, 
    FOR = 8, BREAK = 9, CONTINUE = 10, RETURN = 11, PLUS = 12, MINUS = 13, 
    MUL = 14, DIV = 15, MOD = 16, ASSIGN = 17, PLUS_ASSIGN = 18, SUB_ASSIGN = 19, 
    MULT_ASSIGN = 20, DIV_ASSIGN = 21, MOD_ASSIGN = 22, AND_ASSIGN = 23, 
    OR_ASSIGN = 24, XOR_ASSIGN = 25, SHL_ASSIGN = 26, SHR_ASSIGN = 27, EQ = 28, 
    NEQ = 29, LT = 30, GT = 31, LE = 32, GE = 33, NOT = 34, AND = 35, OR = 36, 
    BITAND = 37, BITOR = 38, BITXOR = 39, BITNOT = 40, BITSHL = 41, BITSHR = 42, 
    L_PAREN = 43, R_PAREN = 44, L_BRACE = 45, R_BRACE = 46, L_BRACKT = 47, 
    R_BRACKT = 48, COMMA = 49, SEMICOLON = 50, IDENT = 51, INTEGER_CONST = 52, 
    FLOAT_CONST = 53, DecimalFloatingConstant = 54, HexadecimalFloatingConstant = 55, 
    WS = 56, LINE_COMMENT = 57, MULTILINE_COMMENT = 58
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
