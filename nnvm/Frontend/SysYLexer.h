
// Generated from ./nnvm/Frontend/SysYLexer.g4 by ANTLR 4.9.1

#pragma once


#include "antlr4-runtime.h"




class  SysYLexer : public antlr4::Lexer {
public:
  enum {
    CONST = 1, INT = 2, VOID = 3, IF = 4, ELSE = 5, WHILE = 6, BREAK = 7, 
    CONTINUE = 8, RETURN = 9, PLUS = 10, MINUS = 11, MUL = 12, DIV = 13, 
    MOD = 14, ASSIGN = 15, EQ = 16, NEQ = 17, LT = 18, GT = 19, LE = 20, 
    GE = 21, NOT = 22, AND = 23, OR = 24, L_PAREN = 25, R_PAREN = 26, L_BRACE = 27, 
    R_BRACE = 28, L_BRACKT = 29, R_BRACKT = 30, COMMA = 31, SEMICOLON = 32, 
    IDENT = 33, INTEGER_CONST = 34, WS = 35, LINE_COMMENT = 36, MULTILINE_COMMENT = 37
  };

  explicit SysYLexer(antlr4::CharStream *input);
  ~SysYLexer();

  virtual std::string getGrammarFileName() const override;
  virtual const std::vector<std::string>& getRuleNames() const override;

  virtual const std::vector<std::string>& getChannelNames() const override;
  virtual const std::vector<std::string>& getModeNames() const override;
  virtual const std::vector<std::string>& getTokenNames() const override; // deprecated, use vocabulary instead
  virtual antlr4::dfa::Vocabulary& getVocabulary() const override;

  virtual const std::vector<uint16_t> getSerializedATN() const override;
  virtual const antlr4::atn::ATN& getATN() const override;

private:
  static std::vector<antlr4::dfa::DFA> _decisionToDFA;
  static antlr4::atn::PredictionContextCache _sharedContextCache;
  static std::vector<std::string> _ruleNames;
  static std::vector<std::string> _tokenNames;
  static std::vector<std::string> _channelNames;
  static std::vector<std::string> _modeNames;

  static std::vector<std::string> _literalNames;
  static std::vector<std::string> _symbolicNames;
  static antlr4::dfa::Vocabulary _vocabulary;
  static antlr4::atn::ATN _atn;
  static std::vector<uint16_t> _serializedATN;


  // Individual action functions triggered by action() above.

  // Individual semantic predicate functions triggered by sempred() above.

  struct Initializer {
    Initializer();
  };
  static Initializer _init;
};

