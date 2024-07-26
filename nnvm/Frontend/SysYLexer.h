
// Generated from ./nnvm/Frontend/SysYLexer.g4 by ANTLR 4.12.0

#pragma once


#include "antlr4-runtime.h"


namespace nnvm {


class  SysYLexer : public antlr4::Lexer {
public:
  enum {
    CONST = 1, INT = 2, FLOAT = 3, VOID = 4, IF = 5, ELSE = 6, WHILE = 7, 
    FOR = 8, BREAK = 9, CONTINUE = 10, RETURN = 11, PLUS = 12, MINUS = 13, 
    MUL = 14, DIV = 15, MOD = 16, ASSIGN = 17, SELF_PLUS = 18, SELF_MINUS = 19, 
    PLUS_ASSIGN = 20, SUB_ASSIGN = 21, MULT_ASSIGN = 22, DIV_ASSIGN = 23, 
    MOD_ASSIGN = 24, AND_ASSIGN = 25, OR_ASSIGN = 26, XOR_ASSIGN = 27, SHL_ASSIGN = 28, 
    SHR_ASSIGN = 29, EQ = 30, NEQ = 31, LT = 32, GT = 33, LE = 34, GE = 35, 
    NOT = 36, AND = 37, OR = 38, BITAND = 39, BITOR = 40, BITXOR = 41, BITNOT = 42, 
    BITSHL = 43, BITSHR = 44, L_PAREN = 45, R_PAREN = 46, L_BRACE = 47, 
    R_BRACE = 48, L_BRACKT = 49, R_BRACKT = 50, COMMA = 51, SEMICOLON = 52, 
    IDENT = 53, INTEGER_CONST = 54, FLOAT_CONST = 55, DecimalFloatingConstant = 56, 
    HexadecimalFloatingConstant = 57, WS = 58, LINE_COMMENT = 59, MULTILINE_COMMENT = 60
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
