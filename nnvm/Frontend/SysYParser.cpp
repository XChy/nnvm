
// Generated from ./nnvm/Frontend/SysYParser.g4 by ANTLR 4.9.1


#include "SysYParserListener.h"
#include "SysYParserVisitor.h"

#include "SysYParser.h"


using namespace antlrcpp;
using namespace nnvm;
using namespace antlr4;

SysYParser::SysYParser(TokenStream *input) : Parser(input) {
  _interpreter = new atn::ParserATNSimulator(this, _atn, _decisionToDFA, _sharedContextCache);
}

SysYParser::~SysYParser() {
  delete _interpreter;
}

std::string SysYParser::getGrammarFileName() const {
  return "SysYParser.g4";
}

const std::vector<std::string>& SysYParser::getRuleNames() const {
  return _ruleNames;
}

dfa::Vocabulary& SysYParser::getVocabulary() const {
  return _vocabulary;
}


//----------------- ProgramContext ------------------------------------------------------------------

SysYParser::ProgramContext::ProgramContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::CompUnitContext* SysYParser::ProgramContext::compUnit() {
  return getRuleContext<SysYParser::CompUnitContext>(0);
}


size_t SysYParser::ProgramContext::getRuleIndex() const {
  return SysYParser::RuleProgram;
}

void SysYParser::ProgramContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterProgram(this);
}

void SysYParser::ProgramContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitProgram(this);
}


antlrcpp::Any SysYParser::ProgramContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitProgram(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ProgramContext* SysYParser::program() {
  ProgramContext *_localctx = _tracker.createInstance<ProgramContext>(_ctx, getState());
  enterRule(_localctx, 0, SysYParser::RuleProgram);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(54);
    compUnit();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- CompUnitContext ------------------------------------------------------------------

SysYParser::CompUnitContext::CompUnitContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::CompUnitContext::EOF() {
  return getToken(SysYParser::EOF, 0);
}

std::vector<SysYParser::FuncDefContext *> SysYParser::CompUnitContext::funcDef() {
  return getRuleContexts<SysYParser::FuncDefContext>();
}

SysYParser::FuncDefContext* SysYParser::CompUnitContext::funcDef(size_t i) {
  return getRuleContext<SysYParser::FuncDefContext>(i);
}

std::vector<SysYParser::DeclContext *> SysYParser::CompUnitContext::decl() {
  return getRuleContexts<SysYParser::DeclContext>();
}

SysYParser::DeclContext* SysYParser::CompUnitContext::decl(size_t i) {
  return getRuleContext<SysYParser::DeclContext>(i);
}


size_t SysYParser::CompUnitContext::getRuleIndex() const {
  return SysYParser::RuleCompUnit;
}

void SysYParser::CompUnitContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterCompUnit(this);
}

void SysYParser::CompUnitContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitCompUnit(this);
}


antlrcpp::Any SysYParser::CompUnitContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitCompUnit(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::CompUnitContext* SysYParser::compUnit() {
  CompUnitContext *_localctx = _tracker.createInstance<CompUnitContext>(_ctx, getState());
  enterRule(_localctx, 2, SysYParser::RuleCompUnit);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(58); 
    _errHandler->sync(this);
    _la = _input->LA(1);
    do {
      setState(58);
      _errHandler->sync(this);
      switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 0, _ctx)) {
      case 1: {
        setState(56);
        funcDef();
        break;
      }

      case 2: {
        setState(57);
        decl();
        break;
      }

      default:
        break;
      }
      setState(60); 
      _errHandler->sync(this);
      _la = _input->LA(1);
    } while ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << SysYParser::CONST)
      | (1ULL << SysYParser::INT)
      | (1ULL << SysYParser::FLOAT)
      | (1ULL << SysYParser::VOID))) != 0));
    setState(62);
    match(SysYParser::EOF);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- DeclContext ------------------------------------------------------------------

SysYParser::DeclContext::DeclContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::ConstDeclContext* SysYParser::DeclContext::constDecl() {
  return getRuleContext<SysYParser::ConstDeclContext>(0);
}

SysYParser::VarDeclContext* SysYParser::DeclContext::varDecl() {
  return getRuleContext<SysYParser::VarDeclContext>(0);
}


size_t SysYParser::DeclContext::getRuleIndex() const {
  return SysYParser::RuleDecl;
}

void SysYParser::DeclContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterDecl(this);
}

void SysYParser::DeclContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitDecl(this);
}


antlrcpp::Any SysYParser::DeclContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitDecl(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::DeclContext* SysYParser::decl() {
  DeclContext *_localctx = _tracker.createInstance<DeclContext>(_ctx, getState());
  enterRule(_localctx, 4, SysYParser::RuleDecl);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(66);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case SysYParser::CONST: {
        enterOuterAlt(_localctx, 1);
        setState(64);
        constDecl();
        break;
      }

      case SysYParser::INT:
      case SysYParser::FLOAT: {
        enterOuterAlt(_localctx, 2);
        setState(65);
        varDecl();
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ConstDeclContext ------------------------------------------------------------------

SysYParser::ConstDeclContext::ConstDeclContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::ConstDeclContext::CONST() {
  return getToken(SysYParser::CONST, 0);
}

SysYParser::BtypeContext* SysYParser::ConstDeclContext::btype() {
  return getRuleContext<SysYParser::BtypeContext>(0);
}

std::vector<SysYParser::ConstDefContext *> SysYParser::ConstDeclContext::constDef() {
  return getRuleContexts<SysYParser::ConstDefContext>();
}

SysYParser::ConstDefContext* SysYParser::ConstDeclContext::constDef(size_t i) {
  return getRuleContext<SysYParser::ConstDefContext>(i);
}

tree::TerminalNode* SysYParser::ConstDeclContext::SEMICOLON() {
  return getToken(SysYParser::SEMICOLON, 0);
}

std::vector<tree::TerminalNode *> SysYParser::ConstDeclContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::ConstDeclContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::ConstDeclContext::getRuleIndex() const {
  return SysYParser::RuleConstDecl;
}

void SysYParser::ConstDeclContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterConstDecl(this);
}

void SysYParser::ConstDeclContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitConstDecl(this);
}


antlrcpp::Any SysYParser::ConstDeclContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitConstDecl(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ConstDeclContext* SysYParser::constDecl() {
  ConstDeclContext *_localctx = _tracker.createInstance<ConstDeclContext>(_ctx, getState());
  enterRule(_localctx, 6, SysYParser::RuleConstDecl);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(68);
    match(SysYParser::CONST);
    setState(69);
    btype();
    setState(70);
    constDef();
    setState(75);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::COMMA) {
      setState(71);
      match(SysYParser::COMMA);
      setState(72);
      constDef();
      setState(77);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(78);
    match(SysYParser::SEMICOLON);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- BtypeContext ------------------------------------------------------------------

SysYParser::BtypeContext::BtypeContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::BtypeContext::INT() {
  return getToken(SysYParser::INT, 0);
}

tree::TerminalNode* SysYParser::BtypeContext::FLOAT() {
  return getToken(SysYParser::FLOAT, 0);
}


size_t SysYParser::BtypeContext::getRuleIndex() const {
  return SysYParser::RuleBtype;
}

void SysYParser::BtypeContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterBtype(this);
}

void SysYParser::BtypeContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitBtype(this);
}


antlrcpp::Any SysYParser::BtypeContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitBtype(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::BtypeContext* SysYParser::btype() {
  BtypeContext *_localctx = _tracker.createInstance<BtypeContext>(_ctx, getState());
  enterRule(_localctx, 8, SysYParser::RuleBtype);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(80);
    _la = _input->LA(1);
    if (!(_la == SysYParser::INT

    || _la == SysYParser::FLOAT)) {
    _errHandler->recoverInline(this);
    }
    else {
      _errHandler->reportMatch(this);
      consume();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ConstDefContext ------------------------------------------------------------------

SysYParser::ConstDefContext::ConstDefContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::ConstDefContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

tree::TerminalNode* SysYParser::ConstDefContext::ASSIGN() {
  return getToken(SysYParser::ASSIGN, 0);
}

SysYParser::ConstInitValContext* SysYParser::ConstDefContext::constInitVal() {
  return getRuleContext<SysYParser::ConstInitValContext>(0);
}

std::vector<tree::TerminalNode *> SysYParser::ConstDefContext::L_BRACKT() {
  return getTokens(SysYParser::L_BRACKT);
}

tree::TerminalNode* SysYParser::ConstDefContext::L_BRACKT(size_t i) {
  return getToken(SysYParser::L_BRACKT, i);
}

std::vector<SysYParser::ConstExpContext *> SysYParser::ConstDefContext::constExp() {
  return getRuleContexts<SysYParser::ConstExpContext>();
}

SysYParser::ConstExpContext* SysYParser::ConstDefContext::constExp(size_t i) {
  return getRuleContext<SysYParser::ConstExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::ConstDefContext::R_BRACKT() {
  return getTokens(SysYParser::R_BRACKT);
}

tree::TerminalNode* SysYParser::ConstDefContext::R_BRACKT(size_t i) {
  return getToken(SysYParser::R_BRACKT, i);
}


size_t SysYParser::ConstDefContext::getRuleIndex() const {
  return SysYParser::RuleConstDef;
}

void SysYParser::ConstDefContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterConstDef(this);
}

void SysYParser::ConstDefContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitConstDef(this);
}


antlrcpp::Any SysYParser::ConstDefContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitConstDef(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ConstDefContext* SysYParser::constDef() {
  ConstDefContext *_localctx = _tracker.createInstance<ConstDefContext>(_ctx, getState());
  enterRule(_localctx, 10, SysYParser::RuleConstDef);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(82);
    match(SysYParser::IDENT);
    setState(89);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::L_BRACKT) {
      setState(83);
      match(SysYParser::L_BRACKT);
      setState(84);
      constExp();
      setState(85);
      match(SysYParser::R_BRACKT);
      setState(91);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(92);
    match(SysYParser::ASSIGN);
    setState(93);
    constInitVal();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ConstInitValContext ------------------------------------------------------------------

SysYParser::ConstInitValContext::ConstInitValContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::ConstExpContext* SysYParser::ConstInitValContext::constExp() {
  return getRuleContext<SysYParser::ConstExpContext>(0);
}

tree::TerminalNode* SysYParser::ConstInitValContext::L_BRACE() {
  return getToken(SysYParser::L_BRACE, 0);
}

tree::TerminalNode* SysYParser::ConstInitValContext::R_BRACE() {
  return getToken(SysYParser::R_BRACE, 0);
}

std::vector<SysYParser::ConstInitValContext *> SysYParser::ConstInitValContext::constInitVal() {
  return getRuleContexts<SysYParser::ConstInitValContext>();
}

SysYParser::ConstInitValContext* SysYParser::ConstInitValContext::constInitVal(size_t i) {
  return getRuleContext<SysYParser::ConstInitValContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::ConstInitValContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::ConstInitValContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::ConstInitValContext::getRuleIndex() const {
  return SysYParser::RuleConstInitVal;
}

void SysYParser::ConstInitValContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterConstInitVal(this);
}

void SysYParser::ConstInitValContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitConstInitVal(this);
}


antlrcpp::Any SysYParser::ConstInitValContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitConstInitVal(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ConstInitValContext* SysYParser::constInitVal() {
  ConstInitValContext *_localctx = _tracker.createInstance<ConstInitValContext>(_ctx, getState());
  enterRule(_localctx, 12, SysYParser::RuleConstInitVal);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(108);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case SysYParser::PLUS:
      case SysYParser::MINUS:
      case SysYParser::NOT:
      case SysYParser::L_PAREN:
      case SysYParser::IDENT:
      case SysYParser::INTEGER_CONST:
      case SysYParser::FLOAT_CONST: {
        enterOuterAlt(_localctx, 1);
        setState(95);
        constExp();
        break;
      }

      case SysYParser::L_BRACE: {
        enterOuterAlt(_localctx, 2);
        setState(96);
        match(SysYParser::L_BRACE);

        setState(105);
        _errHandler->sync(this);

        _la = _input->LA(1);
        if ((((_la & ~ 0x3fULL) == 0) &&
          ((1ULL << _la) & ((1ULL << SysYParser::PLUS)
          | (1ULL << SysYParser::MINUS)
          | (1ULL << SysYParser::NOT)
          | (1ULL << SysYParser::L_PAREN)
          | (1ULL << SysYParser::L_BRACE)
          | (1ULL << SysYParser::IDENT)
          | (1ULL << SysYParser::INTEGER_CONST)
          | (1ULL << SysYParser::FLOAT_CONST))) != 0)) {
          setState(97);
          constInitVal();
          setState(102);
          _errHandler->sync(this);
          _la = _input->LA(1);
          while (_la == SysYParser::COMMA) {
            setState(98);
            match(SysYParser::COMMA);
            setState(99);
            constInitVal();
            setState(104);
            _errHandler->sync(this);
            _la = _input->LA(1);
          }
        }
        setState(107);
        match(SysYParser::R_BRACE);
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- VarDeclContext ------------------------------------------------------------------

SysYParser::VarDeclContext::VarDeclContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::BtypeContext* SysYParser::VarDeclContext::btype() {
  return getRuleContext<SysYParser::BtypeContext>(0);
}

std::vector<SysYParser::VarDefContext *> SysYParser::VarDeclContext::varDef() {
  return getRuleContexts<SysYParser::VarDefContext>();
}

SysYParser::VarDefContext* SysYParser::VarDeclContext::varDef(size_t i) {
  return getRuleContext<SysYParser::VarDefContext>(i);
}

tree::TerminalNode* SysYParser::VarDeclContext::SEMICOLON() {
  return getToken(SysYParser::SEMICOLON, 0);
}

std::vector<tree::TerminalNode *> SysYParser::VarDeclContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::VarDeclContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::VarDeclContext::getRuleIndex() const {
  return SysYParser::RuleVarDecl;
}

void SysYParser::VarDeclContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterVarDecl(this);
}

void SysYParser::VarDeclContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitVarDecl(this);
}


antlrcpp::Any SysYParser::VarDeclContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitVarDecl(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::VarDeclContext* SysYParser::varDecl() {
  VarDeclContext *_localctx = _tracker.createInstance<VarDeclContext>(_ctx, getState());
  enterRule(_localctx, 14, SysYParser::RuleVarDecl);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(110);
    btype();
    setState(111);
    varDef();
    setState(116);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::COMMA) {
      setState(112);
      match(SysYParser::COMMA);
      setState(113);
      varDef();
      setState(118);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(119);
    match(SysYParser::SEMICOLON);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- VarDefContext ------------------------------------------------------------------

SysYParser::VarDefContext::VarDefContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::VarDefContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

std::vector<tree::TerminalNode *> SysYParser::VarDefContext::L_BRACKT() {
  return getTokens(SysYParser::L_BRACKT);
}

tree::TerminalNode* SysYParser::VarDefContext::L_BRACKT(size_t i) {
  return getToken(SysYParser::L_BRACKT, i);
}

std::vector<SysYParser::ConstExpContext *> SysYParser::VarDefContext::constExp() {
  return getRuleContexts<SysYParser::ConstExpContext>();
}

SysYParser::ConstExpContext* SysYParser::VarDefContext::constExp(size_t i) {
  return getRuleContext<SysYParser::ConstExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::VarDefContext::R_BRACKT() {
  return getTokens(SysYParser::R_BRACKT);
}

tree::TerminalNode* SysYParser::VarDefContext::R_BRACKT(size_t i) {
  return getToken(SysYParser::R_BRACKT, i);
}

tree::TerminalNode* SysYParser::VarDefContext::ASSIGN() {
  return getToken(SysYParser::ASSIGN, 0);
}

SysYParser::InitValContext* SysYParser::VarDefContext::initVal() {
  return getRuleContext<SysYParser::InitValContext>(0);
}


size_t SysYParser::VarDefContext::getRuleIndex() const {
  return SysYParser::RuleVarDef;
}

void SysYParser::VarDefContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterVarDef(this);
}

void SysYParser::VarDefContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitVarDef(this);
}


antlrcpp::Any SysYParser::VarDefContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitVarDef(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::VarDefContext* SysYParser::varDef() {
  VarDefContext *_localctx = _tracker.createInstance<VarDefContext>(_ctx, getState());
  enterRule(_localctx, 16, SysYParser::RuleVarDef);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(121);
    match(SysYParser::IDENT);
    setState(128);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::L_BRACKT) {
      setState(122);
      match(SysYParser::L_BRACKT);
      setState(123);
      constExp();
      setState(124);
      match(SysYParser::R_BRACKT);
      setState(130);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(133);
    _errHandler->sync(this);

    _la = _input->LA(1);
    if (_la == SysYParser::ASSIGN) {
      setState(131);
      match(SysYParser::ASSIGN);
      setState(132);
      initVal();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- InitValContext ------------------------------------------------------------------

SysYParser::InitValContext::InitValContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::ExpContext* SysYParser::InitValContext::exp() {
  return getRuleContext<SysYParser::ExpContext>(0);
}

tree::TerminalNode* SysYParser::InitValContext::L_BRACE() {
  return getToken(SysYParser::L_BRACE, 0);
}

tree::TerminalNode* SysYParser::InitValContext::R_BRACE() {
  return getToken(SysYParser::R_BRACE, 0);
}

std::vector<SysYParser::InitValContext *> SysYParser::InitValContext::initVal() {
  return getRuleContexts<SysYParser::InitValContext>();
}

SysYParser::InitValContext* SysYParser::InitValContext::initVal(size_t i) {
  return getRuleContext<SysYParser::InitValContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::InitValContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::InitValContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::InitValContext::getRuleIndex() const {
  return SysYParser::RuleInitVal;
}

void SysYParser::InitValContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterInitVal(this);
}

void SysYParser::InitValContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitInitVal(this);
}


antlrcpp::Any SysYParser::InitValContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitInitVal(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::InitValContext* SysYParser::initVal() {
  InitValContext *_localctx = _tracker.createInstance<InitValContext>(_ctx, getState());
  enterRule(_localctx, 18, SysYParser::RuleInitVal);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(148);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case SysYParser::PLUS:
      case SysYParser::MINUS:
      case SysYParser::NOT:
      case SysYParser::L_PAREN:
      case SysYParser::IDENT:
      case SysYParser::INTEGER_CONST:
      case SysYParser::FLOAT_CONST: {
        enterOuterAlt(_localctx, 1);
        setState(135);
        exp(0);
        break;
      }

      case SysYParser::L_BRACE: {
        enterOuterAlt(_localctx, 2);
        setState(136);
        match(SysYParser::L_BRACE);
        setState(145);
        _errHandler->sync(this);

        _la = _input->LA(1);
        if ((((_la & ~ 0x3fULL) == 0) &&
          ((1ULL << _la) & ((1ULL << SysYParser::PLUS)
          | (1ULL << SysYParser::MINUS)
          | (1ULL << SysYParser::NOT)
          | (1ULL << SysYParser::L_PAREN)
          | (1ULL << SysYParser::L_BRACE)
          | (1ULL << SysYParser::IDENT)
          | (1ULL << SysYParser::INTEGER_CONST)
          | (1ULL << SysYParser::FLOAT_CONST))) != 0)) {
          setState(137);
          initVal();
          setState(142);
          _errHandler->sync(this);
          _la = _input->LA(1);
          while (_la == SysYParser::COMMA) {
            setState(138);
            match(SysYParser::COMMA);
            setState(139);
            initVal();
            setState(144);
            _errHandler->sync(this);
            _la = _input->LA(1);
          }
        }
        setState(147);
        match(SysYParser::R_BRACE);
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncDefContext ------------------------------------------------------------------

SysYParser::FuncDefContext::FuncDefContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::FuncTypeContext* SysYParser::FuncDefContext::funcType() {
  return getRuleContext<SysYParser::FuncTypeContext>(0);
}

tree::TerminalNode* SysYParser::FuncDefContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

tree::TerminalNode* SysYParser::FuncDefContext::L_PAREN() {
  return getToken(SysYParser::L_PAREN, 0);
}

tree::TerminalNode* SysYParser::FuncDefContext::R_PAREN() {
  return getToken(SysYParser::R_PAREN, 0);
}

SysYParser::BlockContext* SysYParser::FuncDefContext::block() {
  return getRuleContext<SysYParser::BlockContext>(0);
}

SysYParser::FuncFParamsContext* SysYParser::FuncDefContext::funcFParams() {
  return getRuleContext<SysYParser::FuncFParamsContext>(0);
}


size_t SysYParser::FuncDefContext::getRuleIndex() const {
  return SysYParser::RuleFuncDef;
}

void SysYParser::FuncDefContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterFuncDef(this);
}

void SysYParser::FuncDefContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitFuncDef(this);
}


antlrcpp::Any SysYParser::FuncDefContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitFuncDef(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::FuncDefContext* SysYParser::funcDef() {
  FuncDefContext *_localctx = _tracker.createInstance<FuncDefContext>(_ctx, getState());
  enterRule(_localctx, 20, SysYParser::RuleFuncDef);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(150);
    funcType();
    setState(151);
    match(SysYParser::IDENT);
    setState(152);
    match(SysYParser::L_PAREN);
    setState(154);
    _errHandler->sync(this);

    _la = _input->LA(1);
    if (_la == SysYParser::INT

    || _la == SysYParser::FLOAT) {
      setState(153);
      funcFParams();
    }
    setState(156);
    match(SysYParser::R_PAREN);
    setState(157);
    block();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncTypeContext ------------------------------------------------------------------

SysYParser::FuncTypeContext::FuncTypeContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::FuncTypeContext::VOID() {
  return getToken(SysYParser::VOID, 0);
}

tree::TerminalNode* SysYParser::FuncTypeContext::INT() {
  return getToken(SysYParser::INT, 0);
}

tree::TerminalNode* SysYParser::FuncTypeContext::FLOAT() {
  return getToken(SysYParser::FLOAT, 0);
}


size_t SysYParser::FuncTypeContext::getRuleIndex() const {
  return SysYParser::RuleFuncType;
}

void SysYParser::FuncTypeContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterFuncType(this);
}

void SysYParser::FuncTypeContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitFuncType(this);
}


antlrcpp::Any SysYParser::FuncTypeContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitFuncType(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::FuncTypeContext* SysYParser::funcType() {
  FuncTypeContext *_localctx = _tracker.createInstance<FuncTypeContext>(_ctx, getState());
  enterRule(_localctx, 22, SysYParser::RuleFuncType);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(159);
    _la = _input->LA(1);
    if (!((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << SysYParser::INT)
      | (1ULL << SysYParser::FLOAT)
      | (1ULL << SysYParser::VOID))) != 0))) {
    _errHandler->recoverInline(this);
    }
    else {
      _errHandler->reportMatch(this);
      consume();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncFParamsContext ------------------------------------------------------------------

SysYParser::FuncFParamsContext::FuncFParamsContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<SysYParser::FuncFParamContext *> SysYParser::FuncFParamsContext::funcFParam() {
  return getRuleContexts<SysYParser::FuncFParamContext>();
}

SysYParser::FuncFParamContext* SysYParser::FuncFParamsContext::funcFParam(size_t i) {
  return getRuleContext<SysYParser::FuncFParamContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::FuncFParamsContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::FuncFParamsContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::FuncFParamsContext::getRuleIndex() const {
  return SysYParser::RuleFuncFParams;
}

void SysYParser::FuncFParamsContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterFuncFParams(this);
}

void SysYParser::FuncFParamsContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitFuncFParams(this);
}


antlrcpp::Any SysYParser::FuncFParamsContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitFuncFParams(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::FuncFParamsContext* SysYParser::funcFParams() {
  FuncFParamsContext *_localctx = _tracker.createInstance<FuncFParamsContext>(_ctx, getState());
  enterRule(_localctx, 24, SysYParser::RuleFuncFParams);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(161);
    funcFParam();
    setState(166);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::COMMA) {
      setState(162);
      match(SysYParser::COMMA);
      setState(163);
      funcFParam();
      setState(168);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncFParamContext ------------------------------------------------------------------

SysYParser::FuncFParamContext::FuncFParamContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::BtypeContext* SysYParser::FuncFParamContext::btype() {
  return getRuleContext<SysYParser::BtypeContext>(0);
}

tree::TerminalNode* SysYParser::FuncFParamContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

std::vector<tree::TerminalNode *> SysYParser::FuncFParamContext::L_BRACKT() {
  return getTokens(SysYParser::L_BRACKT);
}

tree::TerminalNode* SysYParser::FuncFParamContext::L_BRACKT(size_t i) {
  return getToken(SysYParser::L_BRACKT, i);
}

std::vector<tree::TerminalNode *> SysYParser::FuncFParamContext::R_BRACKT() {
  return getTokens(SysYParser::R_BRACKT);
}

tree::TerminalNode* SysYParser::FuncFParamContext::R_BRACKT(size_t i) {
  return getToken(SysYParser::R_BRACKT, i);
}

std::vector<SysYParser::ExpContext *> SysYParser::FuncFParamContext::exp() {
  return getRuleContexts<SysYParser::ExpContext>();
}

SysYParser::ExpContext* SysYParser::FuncFParamContext::exp(size_t i) {
  return getRuleContext<SysYParser::ExpContext>(i);
}


size_t SysYParser::FuncFParamContext::getRuleIndex() const {
  return SysYParser::RuleFuncFParam;
}

void SysYParser::FuncFParamContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterFuncFParam(this);
}

void SysYParser::FuncFParamContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitFuncFParam(this);
}


antlrcpp::Any SysYParser::FuncFParamContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitFuncFParam(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::FuncFParamContext* SysYParser::funcFParam() {
  FuncFParamContext *_localctx = _tracker.createInstance<FuncFParamContext>(_ctx, getState());
  enterRule(_localctx, 26, SysYParser::RuleFuncFParam);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(169);
    btype();
    setState(170);
    match(SysYParser::IDENT);
    setState(182);
    _errHandler->sync(this);

    _la = _input->LA(1);
    if (_la == SysYParser::L_BRACKT) {
      setState(171);
      match(SysYParser::L_BRACKT);
      setState(172);
      match(SysYParser::R_BRACKT);
      setState(179);
      _errHandler->sync(this);
      _la = _input->LA(1);
      while (_la == SysYParser::L_BRACKT) {
        setState(173);
        match(SysYParser::L_BRACKT);
        setState(174);
        exp(0);
        setState(175);
        match(SysYParser::R_BRACKT);
        setState(181);
        _errHandler->sync(this);
        _la = _input->LA(1);
      }
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- BlockContext ------------------------------------------------------------------

SysYParser::BlockContext::BlockContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::BlockContext::L_BRACE() {
  return getToken(SysYParser::L_BRACE, 0);
}

tree::TerminalNode* SysYParser::BlockContext::R_BRACE() {
  return getToken(SysYParser::R_BRACE, 0);
}

std::vector<SysYParser::BlockItemContext *> SysYParser::BlockContext::blockItem() {
  return getRuleContexts<SysYParser::BlockItemContext>();
}

SysYParser::BlockItemContext* SysYParser::BlockContext::blockItem(size_t i) {
  return getRuleContext<SysYParser::BlockItemContext>(i);
}


size_t SysYParser::BlockContext::getRuleIndex() const {
  return SysYParser::RuleBlock;
}

void SysYParser::BlockContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterBlock(this);
}

void SysYParser::BlockContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitBlock(this);
}


antlrcpp::Any SysYParser::BlockContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitBlock(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::BlockContext* SysYParser::block() {
  BlockContext *_localctx = _tracker.createInstance<BlockContext>(_ctx, getState());
  enterRule(_localctx, 28, SysYParser::RuleBlock);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(184);
    match(SysYParser::L_BRACE);
    setState(188);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << SysYParser::CONST)
      | (1ULL << SysYParser::INT)
      | (1ULL << SysYParser::FLOAT)
      | (1ULL << SysYParser::IF)
      | (1ULL << SysYParser::WHILE)
      | (1ULL << SysYParser::BREAK)
      | (1ULL << SysYParser::CONTINUE)
      | (1ULL << SysYParser::RETURN)
      | (1ULL << SysYParser::PLUS)
      | (1ULL << SysYParser::MINUS)
      | (1ULL << SysYParser::NOT)
      | (1ULL << SysYParser::L_PAREN)
      | (1ULL << SysYParser::L_BRACE)
      | (1ULL << SysYParser::SEMICOLON)
      | (1ULL << SysYParser::IDENT)
      | (1ULL << SysYParser::INTEGER_CONST)
      | (1ULL << SysYParser::FLOAT_CONST))) != 0)) {
      setState(185);
      blockItem();
      setState(190);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
    setState(191);
    match(SysYParser::R_BRACE);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- BlockItemContext ------------------------------------------------------------------

SysYParser::BlockItemContext::BlockItemContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::DeclContext* SysYParser::BlockItemContext::decl() {
  return getRuleContext<SysYParser::DeclContext>(0);
}

SysYParser::StmtContext* SysYParser::BlockItemContext::stmt() {
  return getRuleContext<SysYParser::StmtContext>(0);
}


size_t SysYParser::BlockItemContext::getRuleIndex() const {
  return SysYParser::RuleBlockItem;
}

void SysYParser::BlockItemContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterBlockItem(this);
}

void SysYParser::BlockItemContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitBlockItem(this);
}


antlrcpp::Any SysYParser::BlockItemContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitBlockItem(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::BlockItemContext* SysYParser::blockItem() {
  BlockItemContext *_localctx = _tracker.createInstance<BlockItemContext>(_ctx, getState());
  enterRule(_localctx, 30, SysYParser::RuleBlockItem);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(195);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case SysYParser::CONST:
      case SysYParser::INT:
      case SysYParser::FLOAT: {
        enterOuterAlt(_localctx, 1);
        setState(193);
        decl();
        break;
      }

      case SysYParser::IF:
      case SysYParser::WHILE:
      case SysYParser::BREAK:
      case SysYParser::CONTINUE:
      case SysYParser::RETURN:
      case SysYParser::PLUS:
      case SysYParser::MINUS:
      case SysYParser::NOT:
      case SysYParser::L_PAREN:
      case SysYParser::L_BRACE:
      case SysYParser::SEMICOLON:
      case SysYParser::IDENT:
      case SysYParser::INTEGER_CONST:
      case SysYParser::FLOAT_CONST: {
        enterOuterAlt(_localctx, 2);
        setState(194);
        stmt();
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ReturnStmtContext ------------------------------------------------------------------

SysYParser::ReturnStmtContext::ReturnStmtContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::ReturnStmtContext::RETURN() {
  return getToken(SysYParser::RETURN, 0);
}

tree::TerminalNode* SysYParser::ReturnStmtContext::SEMICOLON() {
  return getToken(SysYParser::SEMICOLON, 0);
}

SysYParser::ExpContext* SysYParser::ReturnStmtContext::exp() {
  return getRuleContext<SysYParser::ExpContext>(0);
}


size_t SysYParser::ReturnStmtContext::getRuleIndex() const {
  return SysYParser::RuleReturnStmt;
}

void SysYParser::ReturnStmtContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterReturnStmt(this);
}

void SysYParser::ReturnStmtContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitReturnStmt(this);
}


antlrcpp::Any SysYParser::ReturnStmtContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitReturnStmt(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ReturnStmtContext* SysYParser::returnStmt() {
  ReturnStmtContext *_localctx = _tracker.createInstance<ReturnStmtContext>(_ctx, getState());
  enterRule(_localctx, 32, SysYParser::RuleReturnStmt);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(197);
    match(SysYParser::RETURN);
    setState(199);
    _errHandler->sync(this);

    _la = _input->LA(1);
    if ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << SysYParser::PLUS)
      | (1ULL << SysYParser::MINUS)
      | (1ULL << SysYParser::NOT)
      | (1ULL << SysYParser::L_PAREN)
      | (1ULL << SysYParser::IDENT)
      | (1ULL << SysYParser::INTEGER_CONST)
      | (1ULL << SysYParser::FLOAT_CONST))) != 0)) {
      setState(198);
      exp(0);
    }
    setState(201);
    match(SysYParser::SEMICOLON);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- StmtContext ------------------------------------------------------------------

SysYParser::StmtContext::StmtContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::LValContext* SysYParser::StmtContext::lVal() {
  return getRuleContext<SysYParser::LValContext>(0);
}

tree::TerminalNode* SysYParser::StmtContext::ASSIGN() {
  return getToken(SysYParser::ASSIGN, 0);
}

SysYParser::ExpContext* SysYParser::StmtContext::exp() {
  return getRuleContext<SysYParser::ExpContext>(0);
}

tree::TerminalNode* SysYParser::StmtContext::SEMICOLON() {
  return getToken(SysYParser::SEMICOLON, 0);
}

SysYParser::BlockContext* SysYParser::StmtContext::block() {
  return getRuleContext<SysYParser::BlockContext>(0);
}

tree::TerminalNode* SysYParser::StmtContext::IF() {
  return getToken(SysYParser::IF, 0);
}

tree::TerminalNode* SysYParser::StmtContext::L_PAREN() {
  return getToken(SysYParser::L_PAREN, 0);
}

SysYParser::CondContext* SysYParser::StmtContext::cond() {
  return getRuleContext<SysYParser::CondContext>(0);
}

tree::TerminalNode* SysYParser::StmtContext::R_PAREN() {
  return getToken(SysYParser::R_PAREN, 0);
}

std::vector<SysYParser::StmtContext *> SysYParser::StmtContext::stmt() {
  return getRuleContexts<SysYParser::StmtContext>();
}

SysYParser::StmtContext* SysYParser::StmtContext::stmt(size_t i) {
  return getRuleContext<SysYParser::StmtContext>(i);
}

tree::TerminalNode* SysYParser::StmtContext::ELSE() {
  return getToken(SysYParser::ELSE, 0);
}

tree::TerminalNode* SysYParser::StmtContext::WHILE() {
  return getToken(SysYParser::WHILE, 0);
}

tree::TerminalNode* SysYParser::StmtContext::BREAK() {
  return getToken(SysYParser::BREAK, 0);
}

tree::TerminalNode* SysYParser::StmtContext::CONTINUE() {
  return getToken(SysYParser::CONTINUE, 0);
}

SysYParser::ReturnStmtContext* SysYParser::StmtContext::returnStmt() {
  return getRuleContext<SysYParser::ReturnStmtContext>(0);
}


size_t SysYParser::StmtContext::getRuleIndex() const {
  return SysYParser::RuleStmt;
}

void SysYParser::StmtContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterStmt(this);
}

void SysYParser::StmtContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitStmt(this);
}


antlrcpp::Any SysYParser::StmtContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitStmt(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::StmtContext* SysYParser::stmt() {
  StmtContext *_localctx = _tracker.createInstance<StmtContext>(_ctx, getState());
  enterRule(_localctx, 34, SysYParser::RuleStmt);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    setState(233);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 23, _ctx)) {
    case 1: {
      enterOuterAlt(_localctx, 1);
      setState(203);
      lVal();
      setState(204);
      match(SysYParser::ASSIGN);
      setState(205);
      exp(0);
      setState(206);
      match(SysYParser::SEMICOLON);
      break;
    }

    case 2: {
      enterOuterAlt(_localctx, 2);
      setState(209);
      _errHandler->sync(this);

      _la = _input->LA(1);
      if ((((_la & ~ 0x3fULL) == 0) &&
        ((1ULL << _la) & ((1ULL << SysYParser::PLUS)
        | (1ULL << SysYParser::MINUS)
        | (1ULL << SysYParser::NOT)
        | (1ULL << SysYParser::L_PAREN)
        | (1ULL << SysYParser::IDENT)
        | (1ULL << SysYParser::INTEGER_CONST)
        | (1ULL << SysYParser::FLOAT_CONST))) != 0)) {
        setState(208);
        exp(0);
      }
      setState(211);
      match(SysYParser::SEMICOLON);
      break;
    }

    case 3: {
      enterOuterAlt(_localctx, 3);
      setState(212);
      block();
      break;
    }

    case 4: {
      enterOuterAlt(_localctx, 4);
      setState(213);
      match(SysYParser::IF);
      setState(214);
      match(SysYParser::L_PAREN);
      setState(215);
      cond(0);
      setState(216);
      match(SysYParser::R_PAREN);
      setState(217);
      stmt();
      setState(220);
      _errHandler->sync(this);

      switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 22, _ctx)) {
      case 1: {
        setState(218);
        match(SysYParser::ELSE);
        setState(219);
        stmt();
        break;
      }

      default:
        break;
      }
      break;
    }

    case 5: {
      enterOuterAlt(_localctx, 5);
      setState(222);
      match(SysYParser::WHILE);
      setState(223);
      match(SysYParser::L_PAREN);
      setState(224);
      cond(0);
      setState(225);
      match(SysYParser::R_PAREN);
      setState(226);
      stmt();
      break;
    }

    case 6: {
      enterOuterAlt(_localctx, 6);
      setState(228);
      match(SysYParser::BREAK);
      setState(229);
      match(SysYParser::SEMICOLON);
      break;
    }

    case 7: {
      enterOuterAlt(_localctx, 7);
      setState(230);
      match(SysYParser::CONTINUE);
      setState(231);
      match(SysYParser::SEMICOLON);
      break;
    }

    case 8: {
      enterOuterAlt(_localctx, 8);
      setState(232);
      returnStmt();
      break;
    }

    default:
      break;
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ExpContext ------------------------------------------------------------------

SysYParser::ExpContext::ExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::ExpContext::L_PAREN() {
  return getToken(SysYParser::L_PAREN, 0);
}

std::vector<SysYParser::ExpContext *> SysYParser::ExpContext::exp() {
  return getRuleContexts<SysYParser::ExpContext>();
}

SysYParser::ExpContext* SysYParser::ExpContext::exp(size_t i) {
  return getRuleContext<SysYParser::ExpContext>(i);
}

tree::TerminalNode* SysYParser::ExpContext::R_PAREN() {
  return getToken(SysYParser::R_PAREN, 0);
}

SysYParser::LValContext* SysYParser::ExpContext::lVal() {
  return getRuleContext<SysYParser::LValContext>(0);
}

SysYParser::NumberContext* SysYParser::ExpContext::number() {
  return getRuleContext<SysYParser::NumberContext>(0);
}

SysYParser::CallContext* SysYParser::ExpContext::call() {
  return getRuleContext<SysYParser::CallContext>(0);
}

SysYParser::UnaryOpContext* SysYParser::ExpContext::unaryOp() {
  return getRuleContext<SysYParser::UnaryOpContext>(0);
}

tree::TerminalNode* SysYParser::ExpContext::MUL() {
  return getToken(SysYParser::MUL, 0);
}

tree::TerminalNode* SysYParser::ExpContext::DIV() {
  return getToken(SysYParser::DIV, 0);
}

tree::TerminalNode* SysYParser::ExpContext::MOD() {
  return getToken(SysYParser::MOD, 0);
}

tree::TerminalNode* SysYParser::ExpContext::PLUS() {
  return getToken(SysYParser::PLUS, 0);
}

tree::TerminalNode* SysYParser::ExpContext::MINUS() {
  return getToken(SysYParser::MINUS, 0);
}


size_t SysYParser::ExpContext::getRuleIndex() const {
  return SysYParser::RuleExp;
}

void SysYParser::ExpContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterExp(this);
}

void SysYParser::ExpContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitExp(this);
}


antlrcpp::Any SysYParser::ExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitExp(this);
  else
    return visitor->visitChildren(this);
}


SysYParser::ExpContext* SysYParser::exp() {
   return exp(0);
}

SysYParser::ExpContext* SysYParser::exp(int precedence) {
  ParserRuleContext *parentContext = _ctx;
  size_t parentState = getState();
  SysYParser::ExpContext *_localctx = _tracker.createInstance<ExpContext>(_ctx, parentState);
  SysYParser::ExpContext *previousContext = _localctx;
  (void)previousContext; // Silence compiler, in case the context is not used by generated code.
  size_t startState = 36;
  enterRecursionRule(_localctx, 36, SysYParser::RuleExp, precedence);

    size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    unrollRecursionContexts(parentContext);
  });
  try {
    size_t alt;
    enterOuterAlt(_localctx, 1);
    setState(246);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 24, _ctx)) {
    case 1: {
      setState(236);
      match(SysYParser::L_PAREN);
      setState(237);
      exp(0);
      setState(238);
      match(SysYParser::R_PAREN);
      break;
    }

    case 2: {
      setState(240);
      lVal();
      break;
    }

    case 3: {
      setState(241);
      number();
      break;
    }

    case 4: {
      setState(242);
      call();
      break;
    }

    case 5: {
      setState(243);
      unaryOp();
      setState(244);
      exp(3);
      break;
    }

    default:
      break;
    }
    _ctx->stop = _input->LT(-1);
    setState(256);
    _errHandler->sync(this);
    alt = getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 26, _ctx);
    while (alt != 2 && alt != atn::ATN::INVALID_ALT_NUMBER) {
      if (alt == 1) {
        if (!_parseListeners.empty())
          triggerExitRuleEvent();
        previousContext = _localctx;
        setState(254);
        _errHandler->sync(this);
        switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 25, _ctx)) {
        case 1: {
          _localctx = _tracker.createInstance<ExpContext>(parentContext, parentState);
          pushNewRecursionContext(_localctx, startState, RuleExp);
          setState(248);

          if (!(precpred(_ctx, 2))) throw FailedPredicateException(this, "precpred(_ctx, 2)");
          setState(249);
          _la = _input->LA(1);
          if (!((((_la & ~ 0x3fULL) == 0) &&
            ((1ULL << _la) & ((1ULL << SysYParser::MUL)
            | (1ULL << SysYParser::DIV)
            | (1ULL << SysYParser::MOD))) != 0))) {
          _errHandler->recoverInline(this);
          }
          else {
            _errHandler->reportMatch(this);
            consume();
          }
          setState(250);
          exp(3);
          break;
        }

        case 2: {
          _localctx = _tracker.createInstance<ExpContext>(parentContext, parentState);
          pushNewRecursionContext(_localctx, startState, RuleExp);
          setState(251);

          if (!(precpred(_ctx, 1))) throw FailedPredicateException(this, "precpred(_ctx, 1)");
          setState(252);
          _la = _input->LA(1);
          if (!(_la == SysYParser::PLUS

          || _la == SysYParser::MINUS)) {
          _errHandler->recoverInline(this);
          }
          else {
            _errHandler->reportMatch(this);
            consume();
          }
          setState(253);
          exp(2);
          break;
        }

        default:
          break;
        } 
      }
      setState(258);
      _errHandler->sync(this);
      alt = getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 26, _ctx);
    }
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }
  return _localctx;
}

//----------------- CallContext ------------------------------------------------------------------

SysYParser::CallContext::CallContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::CallContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

tree::TerminalNode* SysYParser::CallContext::L_PAREN() {
  return getToken(SysYParser::L_PAREN, 0);
}

tree::TerminalNode* SysYParser::CallContext::R_PAREN() {
  return getToken(SysYParser::R_PAREN, 0);
}

SysYParser::FuncRParamsContext* SysYParser::CallContext::funcRParams() {
  return getRuleContext<SysYParser::FuncRParamsContext>(0);
}


size_t SysYParser::CallContext::getRuleIndex() const {
  return SysYParser::RuleCall;
}

void SysYParser::CallContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterCall(this);
}

void SysYParser::CallContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitCall(this);
}


antlrcpp::Any SysYParser::CallContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitCall(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::CallContext* SysYParser::call() {
  CallContext *_localctx = _tracker.createInstance<CallContext>(_ctx, getState());
  enterRule(_localctx, 38, SysYParser::RuleCall);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(259);
    match(SysYParser::IDENT);
    setState(260);
    match(SysYParser::L_PAREN);
    setState(262);
    _errHandler->sync(this);

    _la = _input->LA(1);
    if ((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << SysYParser::PLUS)
      | (1ULL << SysYParser::MINUS)
      | (1ULL << SysYParser::NOT)
      | (1ULL << SysYParser::L_PAREN)
      | (1ULL << SysYParser::IDENT)
      | (1ULL << SysYParser::INTEGER_CONST)
      | (1ULL << SysYParser::FLOAT_CONST))) != 0)) {
      setState(261);
      funcRParams();
    }
    setState(264);
    match(SysYParser::R_PAREN);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- CondContext ------------------------------------------------------------------

SysYParser::CondContext::CondContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::ExpContext* SysYParser::CondContext::exp() {
  return getRuleContext<SysYParser::ExpContext>(0);
}

std::vector<SysYParser::CondContext *> SysYParser::CondContext::cond() {
  return getRuleContexts<SysYParser::CondContext>();
}

SysYParser::CondContext* SysYParser::CondContext::cond(size_t i) {
  return getRuleContext<SysYParser::CondContext>(i);
}

tree::TerminalNode* SysYParser::CondContext::LT() {
  return getToken(SysYParser::LT, 0);
}

tree::TerminalNode* SysYParser::CondContext::GT() {
  return getToken(SysYParser::GT, 0);
}

tree::TerminalNode* SysYParser::CondContext::LE() {
  return getToken(SysYParser::LE, 0);
}

tree::TerminalNode* SysYParser::CondContext::GE() {
  return getToken(SysYParser::GE, 0);
}

tree::TerminalNode* SysYParser::CondContext::EQ() {
  return getToken(SysYParser::EQ, 0);
}

tree::TerminalNode* SysYParser::CondContext::NEQ() {
  return getToken(SysYParser::NEQ, 0);
}

tree::TerminalNode* SysYParser::CondContext::AND() {
  return getToken(SysYParser::AND, 0);
}

tree::TerminalNode* SysYParser::CondContext::OR() {
  return getToken(SysYParser::OR, 0);
}


size_t SysYParser::CondContext::getRuleIndex() const {
  return SysYParser::RuleCond;
}

void SysYParser::CondContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterCond(this);
}

void SysYParser::CondContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitCond(this);
}


antlrcpp::Any SysYParser::CondContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitCond(this);
  else
    return visitor->visitChildren(this);
}


SysYParser::CondContext* SysYParser::cond() {
   return cond(0);
}

SysYParser::CondContext* SysYParser::cond(int precedence) {
  ParserRuleContext *parentContext = _ctx;
  size_t parentState = getState();
  SysYParser::CondContext *_localctx = _tracker.createInstance<CondContext>(_ctx, parentState);
  SysYParser::CondContext *previousContext = _localctx;
  (void)previousContext; // Silence compiler, in case the context is not used by generated code.
  size_t startState = 40;
  enterRecursionRule(_localctx, 40, SysYParser::RuleCond, precedence);

    size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    unrollRecursionContexts(parentContext);
  });
  try {
    size_t alt;
    enterOuterAlt(_localctx, 1);
    setState(267);
    exp(0);
    _ctx->stop = _input->LT(-1);
    setState(283);
    _errHandler->sync(this);
    alt = getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 29, _ctx);
    while (alt != 2 && alt != atn::ATN::INVALID_ALT_NUMBER) {
      if (alt == 1) {
        if (!_parseListeners.empty())
          triggerExitRuleEvent();
        previousContext = _localctx;
        setState(281);
        _errHandler->sync(this);
        switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 28, _ctx)) {
        case 1: {
          _localctx = _tracker.createInstance<CondContext>(parentContext, parentState);
          pushNewRecursionContext(_localctx, startState, RuleCond);
          setState(269);

          if (!(precpred(_ctx, 4))) throw FailedPredicateException(this, "precpred(_ctx, 4)");
          setState(270);
          _la = _input->LA(1);
          if (!((((_la & ~ 0x3fULL) == 0) &&
            ((1ULL << _la) & ((1ULL << SysYParser::LT)
            | (1ULL << SysYParser::GT)
            | (1ULL << SysYParser::LE)
            | (1ULL << SysYParser::GE))) != 0))) {
          _errHandler->recoverInline(this);
          }
          else {
            _errHandler->reportMatch(this);
            consume();
          }
          setState(271);
          cond(5);
          break;
        }

        case 2: {
          _localctx = _tracker.createInstance<CondContext>(parentContext, parentState);
          pushNewRecursionContext(_localctx, startState, RuleCond);
          setState(272);

          if (!(precpred(_ctx, 3))) throw FailedPredicateException(this, "precpred(_ctx, 3)");
          setState(273);
          _la = _input->LA(1);
          if (!(_la == SysYParser::EQ

          || _la == SysYParser::NEQ)) {
          _errHandler->recoverInline(this);
          }
          else {
            _errHandler->reportMatch(this);
            consume();
          }
          setState(274);
          cond(4);
          break;
        }

        case 3: {
          _localctx = _tracker.createInstance<CondContext>(parentContext, parentState);
          pushNewRecursionContext(_localctx, startState, RuleCond);
          setState(275);

          if (!(precpred(_ctx, 2))) throw FailedPredicateException(this, "precpred(_ctx, 2)");
          setState(276);
          match(SysYParser::AND);
          setState(277);
          cond(3);
          break;
        }

        case 4: {
          _localctx = _tracker.createInstance<CondContext>(parentContext, parentState);
          pushNewRecursionContext(_localctx, startState, RuleCond);
          setState(278);

          if (!(precpred(_ctx, 1))) throw FailedPredicateException(this, "precpred(_ctx, 1)");
          setState(279);
          match(SysYParser::OR);
          setState(280);
          cond(2);
          break;
        }

        default:
          break;
        } 
      }
      setState(285);
      _errHandler->sync(this);
      alt = getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 29, _ctx);
    }
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }
  return _localctx;
}

//----------------- LValContext ------------------------------------------------------------------

SysYParser::LValContext::LValContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::LValContext::IDENT() {
  return getToken(SysYParser::IDENT, 0);
}

std::vector<tree::TerminalNode *> SysYParser::LValContext::L_BRACKT() {
  return getTokens(SysYParser::L_BRACKT);
}

tree::TerminalNode* SysYParser::LValContext::L_BRACKT(size_t i) {
  return getToken(SysYParser::L_BRACKT, i);
}

std::vector<SysYParser::ExpContext *> SysYParser::LValContext::exp() {
  return getRuleContexts<SysYParser::ExpContext>();
}

SysYParser::ExpContext* SysYParser::LValContext::exp(size_t i) {
  return getRuleContext<SysYParser::ExpContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::LValContext::R_BRACKT() {
  return getTokens(SysYParser::R_BRACKT);
}

tree::TerminalNode* SysYParser::LValContext::R_BRACKT(size_t i) {
  return getToken(SysYParser::R_BRACKT, i);
}


size_t SysYParser::LValContext::getRuleIndex() const {
  return SysYParser::RuleLVal;
}

void SysYParser::LValContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterLVal(this);
}

void SysYParser::LValContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitLVal(this);
}


antlrcpp::Any SysYParser::LValContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitLVal(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::LValContext* SysYParser::lVal() {
  LValContext *_localctx = _tracker.createInstance<LValContext>(_ctx, getState());
  enterRule(_localctx, 42, SysYParser::RuleLVal);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    size_t alt;
    enterOuterAlt(_localctx, 1);
    setState(286);
    match(SysYParser::IDENT);
    setState(293);
    _errHandler->sync(this);
    alt = getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 30, _ctx);
    while (alt != 2 && alt != atn::ATN::INVALID_ALT_NUMBER) {
      if (alt == 1) {
        setState(287);
        match(SysYParser::L_BRACKT);
        setState(288);
        exp(0);
        setState(289);
        match(SysYParser::R_BRACKT); 
      }
      setState(295);
      _errHandler->sync(this);
      alt = getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 30, _ctx);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- NumberContext ------------------------------------------------------------------

SysYParser::NumberContext::NumberContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::NumberContext::INTEGER_CONST() {
  return getToken(SysYParser::INTEGER_CONST, 0);
}

tree::TerminalNode* SysYParser::NumberContext::FLOAT_CONST() {
  return getToken(SysYParser::FLOAT_CONST, 0);
}


size_t SysYParser::NumberContext::getRuleIndex() const {
  return SysYParser::RuleNumber;
}

void SysYParser::NumberContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterNumber(this);
}

void SysYParser::NumberContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitNumber(this);
}


antlrcpp::Any SysYParser::NumberContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitNumber(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::NumberContext* SysYParser::number() {
  NumberContext *_localctx = _tracker.createInstance<NumberContext>(_ctx, getState());
  enterRule(_localctx, 44, SysYParser::RuleNumber);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(296);
    _la = _input->LA(1);
    if (!(_la == SysYParser::INTEGER_CONST

    || _la == SysYParser::FLOAT_CONST)) {
    _errHandler->recoverInline(this);
    }
    else {
      _errHandler->reportMatch(this);
      consume();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- UnaryOpContext ------------------------------------------------------------------

SysYParser::UnaryOpContext::UnaryOpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* SysYParser::UnaryOpContext::PLUS() {
  return getToken(SysYParser::PLUS, 0);
}

tree::TerminalNode* SysYParser::UnaryOpContext::MINUS() {
  return getToken(SysYParser::MINUS, 0);
}

tree::TerminalNode* SysYParser::UnaryOpContext::NOT() {
  return getToken(SysYParser::NOT, 0);
}


size_t SysYParser::UnaryOpContext::getRuleIndex() const {
  return SysYParser::RuleUnaryOp;
}

void SysYParser::UnaryOpContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterUnaryOp(this);
}

void SysYParser::UnaryOpContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitUnaryOp(this);
}


antlrcpp::Any SysYParser::UnaryOpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitUnaryOp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::UnaryOpContext* SysYParser::unaryOp() {
  UnaryOpContext *_localctx = _tracker.createInstance<UnaryOpContext>(_ctx, getState());
  enterRule(_localctx, 46, SysYParser::RuleUnaryOp);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(298);
    _la = _input->LA(1);
    if (!((((_la & ~ 0x3fULL) == 0) &&
      ((1ULL << _la) & ((1ULL << SysYParser::PLUS)
      | (1ULL << SysYParser::MINUS)
      | (1ULL << SysYParser::NOT))) != 0))) {
    _errHandler->recoverInline(this);
    }
    else {
      _errHandler->reportMatch(this);
      consume();
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- FuncRParamsContext ------------------------------------------------------------------

SysYParser::FuncRParamsContext::FuncRParamsContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<SysYParser::ParamContext *> SysYParser::FuncRParamsContext::param() {
  return getRuleContexts<SysYParser::ParamContext>();
}

SysYParser::ParamContext* SysYParser::FuncRParamsContext::param(size_t i) {
  return getRuleContext<SysYParser::ParamContext>(i);
}

std::vector<tree::TerminalNode *> SysYParser::FuncRParamsContext::COMMA() {
  return getTokens(SysYParser::COMMA);
}

tree::TerminalNode* SysYParser::FuncRParamsContext::COMMA(size_t i) {
  return getToken(SysYParser::COMMA, i);
}


size_t SysYParser::FuncRParamsContext::getRuleIndex() const {
  return SysYParser::RuleFuncRParams;
}

void SysYParser::FuncRParamsContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterFuncRParams(this);
}

void SysYParser::FuncRParamsContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitFuncRParams(this);
}


antlrcpp::Any SysYParser::FuncRParamsContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitFuncRParams(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::FuncRParamsContext* SysYParser::funcRParams() {
  FuncRParamsContext *_localctx = _tracker.createInstance<FuncRParamsContext>(_ctx, getState());
  enterRule(_localctx, 48, SysYParser::RuleFuncRParams);
  size_t _la = 0;

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(300);
    param();
    setState(305);
    _errHandler->sync(this);
    _la = _input->LA(1);
    while (_la == SysYParser::COMMA) {
      setState(301);
      match(SysYParser::COMMA);
      setState(302);
      param();
      setState(307);
      _errHandler->sync(this);
      _la = _input->LA(1);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ParamContext ------------------------------------------------------------------

SysYParser::ParamContext::ParamContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::ExpContext* SysYParser::ParamContext::exp() {
  return getRuleContext<SysYParser::ExpContext>(0);
}


size_t SysYParser::ParamContext::getRuleIndex() const {
  return SysYParser::RuleParam;
}

void SysYParser::ParamContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterParam(this);
}

void SysYParser::ParamContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitParam(this);
}


antlrcpp::Any SysYParser::ParamContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitParam(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ParamContext* SysYParser::param() {
  ParamContext *_localctx = _tracker.createInstance<ParamContext>(_ctx, getState());
  enterRule(_localctx, 50, SysYParser::RuleParam);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(308);
    exp(0);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ConstExpContext ------------------------------------------------------------------

SysYParser::ConstExpContext::ConstExpContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

SysYParser::ExpContext* SysYParser::ConstExpContext::exp() {
  return getRuleContext<SysYParser::ExpContext>(0);
}


size_t SysYParser::ConstExpContext::getRuleIndex() const {
  return SysYParser::RuleConstExp;
}

void SysYParser::ConstExpContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterConstExp(this);
}

void SysYParser::ConstExpContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<SysYParserListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitConstExp(this);
}


antlrcpp::Any SysYParser::ConstExpContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<SysYParserVisitor*>(visitor))
    return parserVisitor->visitConstExp(this);
  else
    return visitor->visitChildren(this);
}

SysYParser::ConstExpContext* SysYParser::constExp() {
  ConstExpContext *_localctx = _tracker.createInstance<ConstExpContext>(_ctx, getState());
  enterRule(_localctx, 52, SysYParser::RuleConstExp);

#if __cplusplus > 201703L
  auto onExit = finally([=, this] {
#else
  auto onExit = finally([=] {
#endif
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(310);
    exp(0);
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

bool SysYParser::sempred(RuleContext *context, size_t ruleIndex, size_t predicateIndex) {
  switch (ruleIndex) {
    case 18: return expSempred(dynamic_cast<ExpContext *>(context), predicateIndex);
    case 20: return condSempred(dynamic_cast<CondContext *>(context), predicateIndex);

  default:
    break;
  }
  return true;
}

bool SysYParser::expSempred(ExpContext *_localctx, size_t predicateIndex) {
  switch (predicateIndex) {
    case 0: return precpred(_ctx, 2);
    case 1: return precpred(_ctx, 1);

  default:
    break;
  }
  return true;
}

bool SysYParser::condSempred(CondContext *_localctx, size_t predicateIndex) {
  switch (predicateIndex) {
    case 2: return precpred(_ctx, 4);
    case 3: return precpred(_ctx, 3);
    case 4: return precpred(_ctx, 2);
    case 5: return precpred(_ctx, 1);

  default:
    break;
  }
  return true;
}

// Static vars and initialization.
std::vector<dfa::DFA> SysYParser::_decisionToDFA;
atn::PredictionContextCache SysYParser::_sharedContextCache;

// We own the ATN which in turn owns the ATN states.
atn::ATN SysYParser::_atn;
std::vector<uint16_t> SysYParser::_serializedATN;

std::vector<std::string> SysYParser::_ruleNames = {
  "program", "compUnit", "decl", "constDecl", "btype", "constDef", "constInitVal", 
  "varDecl", "varDef", "initVal", "funcDef", "funcType", "funcFParams", 
  "funcFParam", "block", "blockItem", "returnStmt", "stmt", "exp", "call", 
  "cond", "lVal", "number", "unaryOp", "funcRParams", "param", "constExp"
};

std::vector<std::string> SysYParser::_literalNames = {
  "", "'const'", "'int'", "'float'", "'void'", "'if'", "'else'", "'while'", 
  "'break'", "'continue'", "'return'", "'+'", "'-'", "'*'", "'/'", "'%'", 
  "'='", "'=='", "'!='", "'<'", "'>'", "'<='", "'>='", "'!'", "'&&'", "'||'", 
  "'('", "')'", "'{'", "'}'", "'['", "']'", "','", "';'"
};

std::vector<std::string> SysYParser::_symbolicNames = {
  "", "CONST", "INT", "FLOAT", "VOID", "IF", "ELSE", "WHILE", "BREAK", "CONTINUE", 
  "RETURN", "PLUS", "MINUS", "MUL", "DIV", "MOD", "ASSIGN", "EQ", "NEQ", 
  "LT", "GT", "LE", "GE", "NOT", "AND", "OR", "L_PAREN", "R_PAREN", "L_BRACE", 
  "R_BRACE", "L_BRACKT", "R_BRACKT", "COMMA", "SEMICOLON", "IDENT", "INTEGER_CONST", 
  "FLOAT_CONST", "DecimalFloatingConstant", "HexadecimalFloatingConstant", 
  "WS", "LINE_COMMENT", "MULTILINE_COMMENT"
};

dfa::Vocabulary SysYParser::_vocabulary(_literalNames, _symbolicNames);

std::vector<std::string> SysYParser::_tokenNames;

SysYParser::Initializer::Initializer() {
	for (size_t i = 0; i < _symbolicNames.size(); ++i) {
		std::string name = _vocabulary.getLiteralName(i);
		if (name.empty()) {
			name = _vocabulary.getSymbolicName(i);
		}

		if (name.empty()) {
			_tokenNames.push_back("<INVALID>");
		} else {
      _tokenNames.push_back(name);
    }
	}

  _serializedATN = {
    0x3, 0x608b, 0xa72a, 0x8133, 0xb9ed, 0x417c, 0x3be7, 0x7786, 0x5964, 
    0x3, 0x2b, 0x13b, 0x4, 0x2, 0x9, 0x2, 0x4, 0x3, 0x9, 0x3, 0x4, 0x4, 
    0x9, 0x4, 0x4, 0x5, 0x9, 0x5, 0x4, 0x6, 0x9, 0x6, 0x4, 0x7, 0x9, 0x7, 
    0x4, 0x8, 0x9, 0x8, 0x4, 0x9, 0x9, 0x9, 0x4, 0xa, 0x9, 0xa, 0x4, 0xb, 
    0x9, 0xb, 0x4, 0xc, 0x9, 0xc, 0x4, 0xd, 0x9, 0xd, 0x4, 0xe, 0x9, 0xe, 
    0x4, 0xf, 0x9, 0xf, 0x4, 0x10, 0x9, 0x10, 0x4, 0x11, 0x9, 0x11, 0x4, 
    0x12, 0x9, 0x12, 0x4, 0x13, 0x9, 0x13, 0x4, 0x14, 0x9, 0x14, 0x4, 0x15, 
    0x9, 0x15, 0x4, 0x16, 0x9, 0x16, 0x4, 0x17, 0x9, 0x17, 0x4, 0x18, 0x9, 
    0x18, 0x4, 0x19, 0x9, 0x19, 0x4, 0x1a, 0x9, 0x1a, 0x4, 0x1b, 0x9, 0x1b, 
    0x4, 0x1c, 0x9, 0x1c, 0x3, 0x2, 0x3, 0x2, 0x3, 0x3, 0x3, 0x3, 0x6, 0x3, 
    0x3d, 0xa, 0x3, 0xd, 0x3, 0xe, 0x3, 0x3e, 0x3, 0x3, 0x3, 0x3, 0x3, 0x4, 
    0x3, 0x4, 0x5, 0x4, 0x45, 0xa, 0x4, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 
    0x5, 0x3, 0x5, 0x7, 0x5, 0x4c, 0xa, 0x5, 0xc, 0x5, 0xe, 0x5, 0x4f, 0xb, 
    0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x6, 0x3, 0x6, 0x3, 0x7, 0x3, 0x7, 0x3, 
    0x7, 0x3, 0x7, 0x3, 0x7, 0x7, 0x7, 0x5a, 0xa, 0x7, 0xc, 0x7, 0xe, 0x7, 
    0x5d, 0xb, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x7, 0x3, 0x8, 0x3, 0x8, 0x3, 
    0x8, 0x3, 0x8, 0x3, 0x8, 0x7, 0x8, 0x67, 0xa, 0x8, 0xc, 0x8, 0xe, 0x8, 
    0x6a, 0xb, 0x8, 0x5, 0x8, 0x6c, 0xa, 0x8, 0x3, 0x8, 0x5, 0x8, 0x6f, 
    0xa, 0x8, 0x3, 0x9, 0x3, 0x9, 0x3, 0x9, 0x3, 0x9, 0x7, 0x9, 0x75, 0xa, 
    0x9, 0xc, 0x9, 0xe, 0x9, 0x78, 0xb, 0x9, 0x3, 0x9, 0x3, 0x9, 0x3, 0xa, 
    0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x3, 0xa, 0x7, 0xa, 0x81, 0xa, 0xa, 0xc, 
    0xa, 0xe, 0xa, 0x84, 0xb, 0xa, 0x3, 0xa, 0x3, 0xa, 0x5, 0xa, 0x88, 0xa, 
    0xa, 0x3, 0xb, 0x3, 0xb, 0x3, 0xb, 0x3, 0xb, 0x3, 0xb, 0x7, 0xb, 0x8f, 
    0xa, 0xb, 0xc, 0xb, 0xe, 0xb, 0x92, 0xb, 0xb, 0x5, 0xb, 0x94, 0xa, 0xb, 
    0x3, 0xb, 0x5, 0xb, 0x97, 0xa, 0xb, 0x3, 0xc, 0x3, 0xc, 0x3, 0xc, 0x3, 
    0xc, 0x5, 0xc, 0x9d, 0xa, 0xc, 0x3, 0xc, 0x3, 0xc, 0x3, 0xc, 0x3, 0xd, 
    0x3, 0xd, 0x3, 0xe, 0x3, 0xe, 0x3, 0xe, 0x7, 0xe, 0xa7, 0xa, 0xe, 0xc, 
    0xe, 0xe, 0xe, 0xaa, 0xb, 0xe, 0x3, 0xf, 0x3, 0xf, 0x3, 0xf, 0x3, 0xf, 
    0x3, 0xf, 0x3, 0xf, 0x3, 0xf, 0x3, 0xf, 0x7, 0xf, 0xb4, 0xa, 0xf, 0xc, 
    0xf, 0xe, 0xf, 0xb7, 0xb, 0xf, 0x5, 0xf, 0xb9, 0xa, 0xf, 0x3, 0x10, 
    0x3, 0x10, 0x7, 0x10, 0xbd, 0xa, 0x10, 0xc, 0x10, 0xe, 0x10, 0xc0, 0xb, 
    0x10, 0x3, 0x10, 0x3, 0x10, 0x3, 0x11, 0x3, 0x11, 0x5, 0x11, 0xc6, 0xa, 
    0x11, 0x3, 0x12, 0x3, 0x12, 0x5, 0x12, 0xca, 0xa, 0x12, 0x3, 0x12, 0x3, 
    0x12, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 
    0x5, 0x13, 0xd4, 0xa, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 
    0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x5, 0x13, 0xdf, 
    0xa, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 
    0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x3, 0x13, 0x5, 0x13, 
    0xec, 0xa, 0x13, 0x3, 0x14, 0x3, 0x14, 0x3, 0x14, 0x3, 0x14, 0x3, 0x14, 
    0x3, 0x14, 0x3, 0x14, 0x3, 0x14, 0x3, 0x14, 0x3, 0x14, 0x3, 0x14, 0x5, 
    0x14, 0xf9, 0xa, 0x14, 0x3, 0x14, 0x3, 0x14, 0x3, 0x14, 0x3, 0x14, 0x3, 
    0x14, 0x3, 0x14, 0x7, 0x14, 0x101, 0xa, 0x14, 0xc, 0x14, 0xe, 0x14, 
    0x104, 0xb, 0x14, 0x3, 0x15, 0x3, 0x15, 0x3, 0x15, 0x5, 0x15, 0x109, 
    0xa, 0x15, 0x3, 0x15, 0x3, 0x15, 0x3, 0x16, 0x3, 0x16, 0x3, 0x16, 0x3, 
    0x16, 0x3, 0x16, 0x3, 0x16, 0x3, 0x16, 0x3, 0x16, 0x3, 0x16, 0x3, 0x16, 
    0x3, 0x16, 0x3, 0x16, 0x3, 0x16, 0x3, 0x16, 0x3, 0x16, 0x7, 0x16, 0x11c, 
    0xa, 0x16, 0xc, 0x16, 0xe, 0x16, 0x11f, 0xb, 0x16, 0x3, 0x17, 0x3, 0x17, 
    0x3, 0x17, 0x3, 0x17, 0x3, 0x17, 0x7, 0x17, 0x126, 0xa, 0x17, 0xc, 0x17, 
    0xe, 0x17, 0x129, 0xb, 0x17, 0x3, 0x18, 0x3, 0x18, 0x3, 0x19, 0x3, 0x19, 
    0x3, 0x1a, 0x3, 0x1a, 0x3, 0x1a, 0x7, 0x1a, 0x132, 0xa, 0x1a, 0xc, 0x1a, 
    0xe, 0x1a, 0x135, 0xb, 0x1a, 0x3, 0x1b, 0x3, 0x1b, 0x3, 0x1c, 0x3, 0x1c, 
    0x3, 0x1c, 0x2, 0x4, 0x26, 0x2a, 0x1d, 0x2, 0x4, 0x6, 0x8, 0xa, 0xc, 
    0xe, 0x10, 0x12, 0x14, 0x16, 0x18, 0x1a, 0x1c, 0x1e, 0x20, 0x22, 0x24, 
    0x26, 0x28, 0x2a, 0x2c, 0x2e, 0x30, 0x32, 0x34, 0x36, 0x2, 0xa, 0x3, 
    0x2, 0x4, 0x5, 0x3, 0x2, 0x4, 0x6, 0x3, 0x2, 0xf, 0x11, 0x3, 0x2, 0xd, 
    0xe, 0x3, 0x2, 0x15, 0x18, 0x3, 0x2, 0x13, 0x14, 0x3, 0x2, 0x25, 0x26, 
    0x4, 0x2, 0xd, 0xe, 0x19, 0x19, 0x2, 0x14a, 0x2, 0x38, 0x3, 0x2, 0x2, 
    0x2, 0x4, 0x3c, 0x3, 0x2, 0x2, 0x2, 0x6, 0x44, 0x3, 0x2, 0x2, 0x2, 0x8, 
    0x46, 0x3, 0x2, 0x2, 0x2, 0xa, 0x52, 0x3, 0x2, 0x2, 0x2, 0xc, 0x54, 
    0x3, 0x2, 0x2, 0x2, 0xe, 0x6e, 0x3, 0x2, 0x2, 0x2, 0x10, 0x70, 0x3, 
    0x2, 0x2, 0x2, 0x12, 0x7b, 0x3, 0x2, 0x2, 0x2, 0x14, 0x96, 0x3, 0x2, 
    0x2, 0x2, 0x16, 0x98, 0x3, 0x2, 0x2, 0x2, 0x18, 0xa1, 0x3, 0x2, 0x2, 
    0x2, 0x1a, 0xa3, 0x3, 0x2, 0x2, 0x2, 0x1c, 0xab, 0x3, 0x2, 0x2, 0x2, 
    0x1e, 0xba, 0x3, 0x2, 0x2, 0x2, 0x20, 0xc5, 0x3, 0x2, 0x2, 0x2, 0x22, 
    0xc7, 0x3, 0x2, 0x2, 0x2, 0x24, 0xeb, 0x3, 0x2, 0x2, 0x2, 0x26, 0xf8, 
    0x3, 0x2, 0x2, 0x2, 0x28, 0x105, 0x3, 0x2, 0x2, 0x2, 0x2a, 0x10c, 0x3, 
    0x2, 0x2, 0x2, 0x2c, 0x120, 0x3, 0x2, 0x2, 0x2, 0x2e, 0x12a, 0x3, 0x2, 
    0x2, 0x2, 0x30, 0x12c, 0x3, 0x2, 0x2, 0x2, 0x32, 0x12e, 0x3, 0x2, 0x2, 
    0x2, 0x34, 0x136, 0x3, 0x2, 0x2, 0x2, 0x36, 0x138, 0x3, 0x2, 0x2, 0x2, 
    0x38, 0x39, 0x5, 0x4, 0x3, 0x2, 0x39, 0x3, 0x3, 0x2, 0x2, 0x2, 0x3a, 
    0x3d, 0x5, 0x16, 0xc, 0x2, 0x3b, 0x3d, 0x5, 0x6, 0x4, 0x2, 0x3c, 0x3a, 
    0x3, 0x2, 0x2, 0x2, 0x3c, 0x3b, 0x3, 0x2, 0x2, 0x2, 0x3d, 0x3e, 0x3, 
    0x2, 0x2, 0x2, 0x3e, 0x3c, 0x3, 0x2, 0x2, 0x2, 0x3e, 0x3f, 0x3, 0x2, 
    0x2, 0x2, 0x3f, 0x40, 0x3, 0x2, 0x2, 0x2, 0x40, 0x41, 0x7, 0x2, 0x2, 
    0x3, 0x41, 0x5, 0x3, 0x2, 0x2, 0x2, 0x42, 0x45, 0x5, 0x8, 0x5, 0x2, 
    0x43, 0x45, 0x5, 0x10, 0x9, 0x2, 0x44, 0x42, 0x3, 0x2, 0x2, 0x2, 0x44, 
    0x43, 0x3, 0x2, 0x2, 0x2, 0x45, 0x7, 0x3, 0x2, 0x2, 0x2, 0x46, 0x47, 
    0x7, 0x3, 0x2, 0x2, 0x47, 0x48, 0x5, 0xa, 0x6, 0x2, 0x48, 0x4d, 0x5, 
    0xc, 0x7, 0x2, 0x49, 0x4a, 0x7, 0x22, 0x2, 0x2, 0x4a, 0x4c, 0x5, 0xc, 
    0x7, 0x2, 0x4b, 0x49, 0x3, 0x2, 0x2, 0x2, 0x4c, 0x4f, 0x3, 0x2, 0x2, 
    0x2, 0x4d, 0x4b, 0x3, 0x2, 0x2, 0x2, 0x4d, 0x4e, 0x3, 0x2, 0x2, 0x2, 
    0x4e, 0x50, 0x3, 0x2, 0x2, 0x2, 0x4f, 0x4d, 0x3, 0x2, 0x2, 0x2, 0x50, 
    0x51, 0x7, 0x23, 0x2, 0x2, 0x51, 0x9, 0x3, 0x2, 0x2, 0x2, 0x52, 0x53, 
    0x9, 0x2, 0x2, 0x2, 0x53, 0xb, 0x3, 0x2, 0x2, 0x2, 0x54, 0x5b, 0x7, 
    0x24, 0x2, 0x2, 0x55, 0x56, 0x7, 0x20, 0x2, 0x2, 0x56, 0x57, 0x5, 0x36, 
    0x1c, 0x2, 0x57, 0x58, 0x7, 0x21, 0x2, 0x2, 0x58, 0x5a, 0x3, 0x2, 0x2, 
    0x2, 0x59, 0x55, 0x3, 0x2, 0x2, 0x2, 0x5a, 0x5d, 0x3, 0x2, 0x2, 0x2, 
    0x5b, 0x59, 0x3, 0x2, 0x2, 0x2, 0x5b, 0x5c, 0x3, 0x2, 0x2, 0x2, 0x5c, 
    0x5e, 0x3, 0x2, 0x2, 0x2, 0x5d, 0x5b, 0x3, 0x2, 0x2, 0x2, 0x5e, 0x5f, 
    0x7, 0x12, 0x2, 0x2, 0x5f, 0x60, 0x5, 0xe, 0x8, 0x2, 0x60, 0xd, 0x3, 
    0x2, 0x2, 0x2, 0x61, 0x6f, 0x5, 0x36, 0x1c, 0x2, 0x62, 0x6b, 0x7, 0x1e, 
    0x2, 0x2, 0x63, 0x68, 0x5, 0xe, 0x8, 0x2, 0x64, 0x65, 0x7, 0x22, 0x2, 
    0x2, 0x65, 0x67, 0x5, 0xe, 0x8, 0x2, 0x66, 0x64, 0x3, 0x2, 0x2, 0x2, 
    0x67, 0x6a, 0x3, 0x2, 0x2, 0x2, 0x68, 0x66, 0x3, 0x2, 0x2, 0x2, 0x68, 
    0x69, 0x3, 0x2, 0x2, 0x2, 0x69, 0x6c, 0x3, 0x2, 0x2, 0x2, 0x6a, 0x68, 
    0x3, 0x2, 0x2, 0x2, 0x6b, 0x63, 0x3, 0x2, 0x2, 0x2, 0x6b, 0x6c, 0x3, 
    0x2, 0x2, 0x2, 0x6c, 0x6d, 0x3, 0x2, 0x2, 0x2, 0x6d, 0x6f, 0x7, 0x1f, 
    0x2, 0x2, 0x6e, 0x61, 0x3, 0x2, 0x2, 0x2, 0x6e, 0x62, 0x3, 0x2, 0x2, 
    0x2, 0x6f, 0xf, 0x3, 0x2, 0x2, 0x2, 0x70, 0x71, 0x5, 0xa, 0x6, 0x2, 
    0x71, 0x76, 0x5, 0x12, 0xa, 0x2, 0x72, 0x73, 0x7, 0x22, 0x2, 0x2, 0x73, 
    0x75, 0x5, 0x12, 0xa, 0x2, 0x74, 0x72, 0x3, 0x2, 0x2, 0x2, 0x75, 0x78, 
    0x3, 0x2, 0x2, 0x2, 0x76, 0x74, 0x3, 0x2, 0x2, 0x2, 0x76, 0x77, 0x3, 
    0x2, 0x2, 0x2, 0x77, 0x79, 0x3, 0x2, 0x2, 0x2, 0x78, 0x76, 0x3, 0x2, 
    0x2, 0x2, 0x79, 0x7a, 0x7, 0x23, 0x2, 0x2, 0x7a, 0x11, 0x3, 0x2, 0x2, 
    0x2, 0x7b, 0x82, 0x7, 0x24, 0x2, 0x2, 0x7c, 0x7d, 0x7, 0x20, 0x2, 0x2, 
    0x7d, 0x7e, 0x5, 0x36, 0x1c, 0x2, 0x7e, 0x7f, 0x7, 0x21, 0x2, 0x2, 0x7f, 
    0x81, 0x3, 0x2, 0x2, 0x2, 0x80, 0x7c, 0x3, 0x2, 0x2, 0x2, 0x81, 0x84, 
    0x3, 0x2, 0x2, 0x2, 0x82, 0x80, 0x3, 0x2, 0x2, 0x2, 0x82, 0x83, 0x3, 
    0x2, 0x2, 0x2, 0x83, 0x87, 0x3, 0x2, 0x2, 0x2, 0x84, 0x82, 0x3, 0x2, 
    0x2, 0x2, 0x85, 0x86, 0x7, 0x12, 0x2, 0x2, 0x86, 0x88, 0x5, 0x14, 0xb, 
    0x2, 0x87, 0x85, 0x3, 0x2, 0x2, 0x2, 0x87, 0x88, 0x3, 0x2, 0x2, 0x2, 
    0x88, 0x13, 0x3, 0x2, 0x2, 0x2, 0x89, 0x97, 0x5, 0x26, 0x14, 0x2, 0x8a, 
    0x93, 0x7, 0x1e, 0x2, 0x2, 0x8b, 0x90, 0x5, 0x14, 0xb, 0x2, 0x8c, 0x8d, 
    0x7, 0x22, 0x2, 0x2, 0x8d, 0x8f, 0x5, 0x14, 0xb, 0x2, 0x8e, 0x8c, 0x3, 
    0x2, 0x2, 0x2, 0x8f, 0x92, 0x3, 0x2, 0x2, 0x2, 0x90, 0x8e, 0x3, 0x2, 
    0x2, 0x2, 0x90, 0x91, 0x3, 0x2, 0x2, 0x2, 0x91, 0x94, 0x3, 0x2, 0x2, 
    0x2, 0x92, 0x90, 0x3, 0x2, 0x2, 0x2, 0x93, 0x8b, 0x3, 0x2, 0x2, 0x2, 
    0x93, 0x94, 0x3, 0x2, 0x2, 0x2, 0x94, 0x95, 0x3, 0x2, 0x2, 0x2, 0x95, 
    0x97, 0x7, 0x1f, 0x2, 0x2, 0x96, 0x89, 0x3, 0x2, 0x2, 0x2, 0x96, 0x8a, 
    0x3, 0x2, 0x2, 0x2, 0x97, 0x15, 0x3, 0x2, 0x2, 0x2, 0x98, 0x99, 0x5, 
    0x18, 0xd, 0x2, 0x99, 0x9a, 0x7, 0x24, 0x2, 0x2, 0x9a, 0x9c, 0x7, 0x1c, 
    0x2, 0x2, 0x9b, 0x9d, 0x5, 0x1a, 0xe, 0x2, 0x9c, 0x9b, 0x3, 0x2, 0x2, 
    0x2, 0x9c, 0x9d, 0x3, 0x2, 0x2, 0x2, 0x9d, 0x9e, 0x3, 0x2, 0x2, 0x2, 
    0x9e, 0x9f, 0x7, 0x1d, 0x2, 0x2, 0x9f, 0xa0, 0x5, 0x1e, 0x10, 0x2, 0xa0, 
    0x17, 0x3, 0x2, 0x2, 0x2, 0xa1, 0xa2, 0x9, 0x3, 0x2, 0x2, 0xa2, 0x19, 
    0x3, 0x2, 0x2, 0x2, 0xa3, 0xa8, 0x5, 0x1c, 0xf, 0x2, 0xa4, 0xa5, 0x7, 
    0x22, 0x2, 0x2, 0xa5, 0xa7, 0x5, 0x1c, 0xf, 0x2, 0xa6, 0xa4, 0x3, 0x2, 
    0x2, 0x2, 0xa7, 0xaa, 0x3, 0x2, 0x2, 0x2, 0xa8, 0xa6, 0x3, 0x2, 0x2, 
    0x2, 0xa8, 0xa9, 0x3, 0x2, 0x2, 0x2, 0xa9, 0x1b, 0x3, 0x2, 0x2, 0x2, 
    0xaa, 0xa8, 0x3, 0x2, 0x2, 0x2, 0xab, 0xac, 0x5, 0xa, 0x6, 0x2, 0xac, 
    0xb8, 0x7, 0x24, 0x2, 0x2, 0xad, 0xae, 0x7, 0x20, 0x2, 0x2, 0xae, 0xb5, 
    0x7, 0x21, 0x2, 0x2, 0xaf, 0xb0, 0x7, 0x20, 0x2, 0x2, 0xb0, 0xb1, 0x5, 
    0x26, 0x14, 0x2, 0xb1, 0xb2, 0x7, 0x21, 0x2, 0x2, 0xb2, 0xb4, 0x3, 0x2, 
    0x2, 0x2, 0xb3, 0xaf, 0x3, 0x2, 0x2, 0x2, 0xb4, 0xb7, 0x3, 0x2, 0x2, 
    0x2, 0xb5, 0xb3, 0x3, 0x2, 0x2, 0x2, 0xb5, 0xb6, 0x3, 0x2, 0x2, 0x2, 
    0xb6, 0xb9, 0x3, 0x2, 0x2, 0x2, 0xb7, 0xb5, 0x3, 0x2, 0x2, 0x2, 0xb8, 
    0xad, 0x3, 0x2, 0x2, 0x2, 0xb8, 0xb9, 0x3, 0x2, 0x2, 0x2, 0xb9, 0x1d, 
    0x3, 0x2, 0x2, 0x2, 0xba, 0xbe, 0x7, 0x1e, 0x2, 0x2, 0xbb, 0xbd, 0x5, 
    0x20, 0x11, 0x2, 0xbc, 0xbb, 0x3, 0x2, 0x2, 0x2, 0xbd, 0xc0, 0x3, 0x2, 
    0x2, 0x2, 0xbe, 0xbc, 0x3, 0x2, 0x2, 0x2, 0xbe, 0xbf, 0x3, 0x2, 0x2, 
    0x2, 0xbf, 0xc1, 0x3, 0x2, 0x2, 0x2, 0xc0, 0xbe, 0x3, 0x2, 0x2, 0x2, 
    0xc1, 0xc2, 0x7, 0x1f, 0x2, 0x2, 0xc2, 0x1f, 0x3, 0x2, 0x2, 0x2, 0xc3, 
    0xc6, 0x5, 0x6, 0x4, 0x2, 0xc4, 0xc6, 0x5, 0x24, 0x13, 0x2, 0xc5, 0xc3, 
    0x3, 0x2, 0x2, 0x2, 0xc5, 0xc4, 0x3, 0x2, 0x2, 0x2, 0xc6, 0x21, 0x3, 
    0x2, 0x2, 0x2, 0xc7, 0xc9, 0x7, 0xc, 0x2, 0x2, 0xc8, 0xca, 0x5, 0x26, 
    0x14, 0x2, 0xc9, 0xc8, 0x3, 0x2, 0x2, 0x2, 0xc9, 0xca, 0x3, 0x2, 0x2, 
    0x2, 0xca, 0xcb, 0x3, 0x2, 0x2, 0x2, 0xcb, 0xcc, 0x7, 0x23, 0x2, 0x2, 
    0xcc, 0x23, 0x3, 0x2, 0x2, 0x2, 0xcd, 0xce, 0x5, 0x2c, 0x17, 0x2, 0xce, 
    0xcf, 0x7, 0x12, 0x2, 0x2, 0xcf, 0xd0, 0x5, 0x26, 0x14, 0x2, 0xd0, 0xd1, 
    0x7, 0x23, 0x2, 0x2, 0xd1, 0xec, 0x3, 0x2, 0x2, 0x2, 0xd2, 0xd4, 0x5, 
    0x26, 0x14, 0x2, 0xd3, 0xd2, 0x3, 0x2, 0x2, 0x2, 0xd3, 0xd4, 0x3, 0x2, 
    0x2, 0x2, 0xd4, 0xd5, 0x3, 0x2, 0x2, 0x2, 0xd5, 0xec, 0x7, 0x23, 0x2, 
    0x2, 0xd6, 0xec, 0x5, 0x1e, 0x10, 0x2, 0xd7, 0xd8, 0x7, 0x7, 0x2, 0x2, 
    0xd8, 0xd9, 0x7, 0x1c, 0x2, 0x2, 0xd9, 0xda, 0x5, 0x2a, 0x16, 0x2, 0xda, 
    0xdb, 0x7, 0x1d, 0x2, 0x2, 0xdb, 0xde, 0x5, 0x24, 0x13, 0x2, 0xdc, 0xdd, 
    0x7, 0x8, 0x2, 0x2, 0xdd, 0xdf, 0x5, 0x24, 0x13, 0x2, 0xde, 0xdc, 0x3, 
    0x2, 0x2, 0x2, 0xde, 0xdf, 0x3, 0x2, 0x2, 0x2, 0xdf, 0xec, 0x3, 0x2, 
    0x2, 0x2, 0xe0, 0xe1, 0x7, 0x9, 0x2, 0x2, 0xe1, 0xe2, 0x7, 0x1c, 0x2, 
    0x2, 0xe2, 0xe3, 0x5, 0x2a, 0x16, 0x2, 0xe3, 0xe4, 0x7, 0x1d, 0x2, 0x2, 
    0xe4, 0xe5, 0x5, 0x24, 0x13, 0x2, 0xe5, 0xec, 0x3, 0x2, 0x2, 0x2, 0xe6, 
    0xe7, 0x7, 0xa, 0x2, 0x2, 0xe7, 0xec, 0x7, 0x23, 0x2, 0x2, 0xe8, 0xe9, 
    0x7, 0xb, 0x2, 0x2, 0xe9, 0xec, 0x7, 0x23, 0x2, 0x2, 0xea, 0xec, 0x5, 
    0x22, 0x12, 0x2, 0xeb, 0xcd, 0x3, 0x2, 0x2, 0x2, 0xeb, 0xd3, 0x3, 0x2, 
    0x2, 0x2, 0xeb, 0xd6, 0x3, 0x2, 0x2, 0x2, 0xeb, 0xd7, 0x3, 0x2, 0x2, 
    0x2, 0xeb, 0xe0, 0x3, 0x2, 0x2, 0x2, 0xeb, 0xe6, 0x3, 0x2, 0x2, 0x2, 
    0xeb, 0xe8, 0x3, 0x2, 0x2, 0x2, 0xeb, 0xea, 0x3, 0x2, 0x2, 0x2, 0xec, 
    0x25, 0x3, 0x2, 0x2, 0x2, 0xed, 0xee, 0x8, 0x14, 0x1, 0x2, 0xee, 0xef, 
    0x7, 0x1c, 0x2, 0x2, 0xef, 0xf0, 0x5, 0x26, 0x14, 0x2, 0xf0, 0xf1, 0x7, 
    0x1d, 0x2, 0x2, 0xf1, 0xf9, 0x3, 0x2, 0x2, 0x2, 0xf2, 0xf9, 0x5, 0x2c, 
    0x17, 0x2, 0xf3, 0xf9, 0x5, 0x2e, 0x18, 0x2, 0xf4, 0xf9, 0x5, 0x28, 
    0x15, 0x2, 0xf5, 0xf6, 0x5, 0x30, 0x19, 0x2, 0xf6, 0xf7, 0x5, 0x26, 
    0x14, 0x5, 0xf7, 0xf9, 0x3, 0x2, 0x2, 0x2, 0xf8, 0xed, 0x3, 0x2, 0x2, 
    0x2, 0xf8, 0xf2, 0x3, 0x2, 0x2, 0x2, 0xf8, 0xf3, 0x3, 0x2, 0x2, 0x2, 
    0xf8, 0xf4, 0x3, 0x2, 0x2, 0x2, 0xf8, 0xf5, 0x3, 0x2, 0x2, 0x2, 0xf9, 
    0x102, 0x3, 0x2, 0x2, 0x2, 0xfa, 0xfb, 0xc, 0x4, 0x2, 0x2, 0xfb, 0xfc, 
    0x9, 0x4, 0x2, 0x2, 0xfc, 0x101, 0x5, 0x26, 0x14, 0x5, 0xfd, 0xfe, 0xc, 
    0x3, 0x2, 0x2, 0xfe, 0xff, 0x9, 0x5, 0x2, 0x2, 0xff, 0x101, 0x5, 0x26, 
    0x14, 0x4, 0x100, 0xfa, 0x3, 0x2, 0x2, 0x2, 0x100, 0xfd, 0x3, 0x2, 0x2, 
    0x2, 0x101, 0x104, 0x3, 0x2, 0x2, 0x2, 0x102, 0x100, 0x3, 0x2, 0x2, 
    0x2, 0x102, 0x103, 0x3, 0x2, 0x2, 0x2, 0x103, 0x27, 0x3, 0x2, 0x2, 0x2, 
    0x104, 0x102, 0x3, 0x2, 0x2, 0x2, 0x105, 0x106, 0x7, 0x24, 0x2, 0x2, 
    0x106, 0x108, 0x7, 0x1c, 0x2, 0x2, 0x107, 0x109, 0x5, 0x32, 0x1a, 0x2, 
    0x108, 0x107, 0x3, 0x2, 0x2, 0x2, 0x108, 0x109, 0x3, 0x2, 0x2, 0x2, 
    0x109, 0x10a, 0x3, 0x2, 0x2, 0x2, 0x10a, 0x10b, 0x7, 0x1d, 0x2, 0x2, 
    0x10b, 0x29, 0x3, 0x2, 0x2, 0x2, 0x10c, 0x10d, 0x8, 0x16, 0x1, 0x2, 
    0x10d, 0x10e, 0x5, 0x26, 0x14, 0x2, 0x10e, 0x11d, 0x3, 0x2, 0x2, 0x2, 
    0x10f, 0x110, 0xc, 0x6, 0x2, 0x2, 0x110, 0x111, 0x9, 0x6, 0x2, 0x2, 
    0x111, 0x11c, 0x5, 0x2a, 0x16, 0x7, 0x112, 0x113, 0xc, 0x5, 0x2, 0x2, 
    0x113, 0x114, 0x9, 0x7, 0x2, 0x2, 0x114, 0x11c, 0x5, 0x2a, 0x16, 0x6, 
    0x115, 0x116, 0xc, 0x4, 0x2, 0x2, 0x116, 0x117, 0x7, 0x1a, 0x2, 0x2, 
    0x117, 0x11c, 0x5, 0x2a, 0x16, 0x5, 0x118, 0x119, 0xc, 0x3, 0x2, 0x2, 
    0x119, 0x11a, 0x7, 0x1b, 0x2, 0x2, 0x11a, 0x11c, 0x5, 0x2a, 0x16, 0x4, 
    0x11b, 0x10f, 0x3, 0x2, 0x2, 0x2, 0x11b, 0x112, 0x3, 0x2, 0x2, 0x2, 
    0x11b, 0x115, 0x3, 0x2, 0x2, 0x2, 0x11b, 0x118, 0x3, 0x2, 0x2, 0x2, 
    0x11c, 0x11f, 0x3, 0x2, 0x2, 0x2, 0x11d, 0x11b, 0x3, 0x2, 0x2, 0x2, 
    0x11d, 0x11e, 0x3, 0x2, 0x2, 0x2, 0x11e, 0x2b, 0x3, 0x2, 0x2, 0x2, 0x11f, 
    0x11d, 0x3, 0x2, 0x2, 0x2, 0x120, 0x127, 0x7, 0x24, 0x2, 0x2, 0x121, 
    0x122, 0x7, 0x20, 0x2, 0x2, 0x122, 0x123, 0x5, 0x26, 0x14, 0x2, 0x123, 
    0x124, 0x7, 0x21, 0x2, 0x2, 0x124, 0x126, 0x3, 0x2, 0x2, 0x2, 0x125, 
    0x121, 0x3, 0x2, 0x2, 0x2, 0x126, 0x129, 0x3, 0x2, 0x2, 0x2, 0x127, 
    0x125, 0x3, 0x2, 0x2, 0x2, 0x127, 0x128, 0x3, 0x2, 0x2, 0x2, 0x128, 
    0x2d, 0x3, 0x2, 0x2, 0x2, 0x129, 0x127, 0x3, 0x2, 0x2, 0x2, 0x12a, 0x12b, 
    0x9, 0x8, 0x2, 0x2, 0x12b, 0x2f, 0x3, 0x2, 0x2, 0x2, 0x12c, 0x12d, 0x9, 
    0x9, 0x2, 0x2, 0x12d, 0x31, 0x3, 0x2, 0x2, 0x2, 0x12e, 0x133, 0x5, 0x34, 
    0x1b, 0x2, 0x12f, 0x130, 0x7, 0x22, 0x2, 0x2, 0x130, 0x132, 0x5, 0x34, 
    0x1b, 0x2, 0x131, 0x12f, 0x3, 0x2, 0x2, 0x2, 0x132, 0x135, 0x3, 0x2, 
    0x2, 0x2, 0x133, 0x131, 0x3, 0x2, 0x2, 0x2, 0x133, 0x134, 0x3, 0x2, 
    0x2, 0x2, 0x134, 0x33, 0x3, 0x2, 0x2, 0x2, 0x135, 0x133, 0x3, 0x2, 0x2, 
    0x2, 0x136, 0x137, 0x5, 0x26, 0x14, 0x2, 0x137, 0x35, 0x3, 0x2, 0x2, 
    0x2, 0x138, 0x139, 0x5, 0x26, 0x14, 0x2, 0x139, 0x37, 0x3, 0x2, 0x2, 
    0x2, 0x22, 0x3c, 0x3e, 0x44, 0x4d, 0x5b, 0x68, 0x6b, 0x6e, 0x76, 0x82, 
    0x87, 0x90, 0x93, 0x96, 0x9c, 0xa8, 0xb5, 0xb8, 0xbe, 0xc5, 0xc9, 0xd3, 
    0xde, 0xeb, 0xf8, 0x100, 0x102, 0x108, 0x11b, 0x11d, 0x127, 0x133, 
  };

  atn::ATNDeserializer deserializer;
  _atn = deserializer.deserialize(_serializedATN);

  size_t count = _atn.getNumberOfDecisions();
  _decisionToDFA.reserve(count);
  for (size_t i = 0; i < count; i++) { 
    _decisionToDFA.emplace_back(_atn.getDecisionState(i), i);
  }
}

SysYParser::Initializer SysYParser::_init;
