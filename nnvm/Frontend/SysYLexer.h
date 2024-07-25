
// Generated from ./nnvm/Frontend/SysYLexer.g4 by ANTLR 4.12.0

#pragma once


#include "antlr4-runtime.h"


namespace nnvm {


class  SysYLexer : public antlr4::Lexer {
public:
  enum {
    CONST = 1, INT = 2, FLOAT = 3, VOID = 4, IF = 5, ELSE = 6, WHILE = 7, 
    FOR = 8, BREAK = 9, CONTINUE = 10, RETURN = 11, PLUS = 12, MINUS = 13, 
    MUL = 14, DIV = 15, MOD = 16, ASSIGN = 17, EQ = 18, NEQ = 19, LT = 20, 
    GT = 21, LE = 22, GE = 23, NOT = 24, AND = 25, OR = 26, BITAND = 27, 
    BITOR = 28, BITXOR = 29, BITNOT = 30, BITSHL = 31, BITSHR = 32, L_PAREN = 33, 
    R_PAREN = 34, L_BRACE = 35, R_BRACE = 36, L_BRACKT = 37, R_BRACKT = 38, 
    COMMA = 39, SEMICOLON = 40, IDENT = 41, INTEGER_CONST = 42, FLOAT_CONST = 43, 
    DecimalFloatingConstant = 44, HexadecimalFloatingConstant = 45, WS = 46, 
    LINE_COMMENT = 47, MULTILINE_COMMENT = 48
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
