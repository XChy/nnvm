
// Generated from ./nnvm/Frontend/SysYParser.g4 by ANTLR 4.9.1

#pragma once


#include "antlr4-runtime.h"
#include "SysYParserVisitor.h"


namespace nnvm {

/**
 * This class provides an empty implementation of SysYParserVisitor, which can be
 * extended to create a visitor which only needs to handle a subset of the available methods.
 */
class  SysYParserBaseVisitor : public SysYParserVisitor {
public:

  virtual antlrcpp::Any visitProgram(SysYParser::ProgramContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitCompUnit(SysYParser::CompUnitContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitDecl(SysYParser::DeclContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitConstDecl(SysYParser::ConstDeclContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitBtype(SysYParser::BtypeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitConstDef(SysYParser::ConstDefContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitConstInitVal(SysYParser::ConstInitValContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitVarDecl(SysYParser::VarDeclContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitVarDef(SysYParser::VarDefContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitInitVal(SysYParser::InitValContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitFuncDef(SysYParser::FuncDefContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitFuncType(SysYParser::FuncTypeContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitFuncFParams(SysYParser::FuncFParamsContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitFuncFParam(SysYParser::FuncFParamContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitBlock(SysYParser::BlockContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitBlockItem(SysYParser::BlockItemContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitReturnStmt(SysYParser::ReturnStmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitStmt(SysYParser::StmtContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitExp(SysYParser::ExpContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitCall(SysYParser::CallContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitCond(SysYParser::CondContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitLVal(SysYParser::LValContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitNumber(SysYParser::NumberContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitUnaryOp(SysYParser::UnaryOpContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitFuncRParams(SysYParser::FuncRParamsContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitParam(SysYParser::ParamContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitConstExp(SysYParser::ConstExpContext *ctx) override {
    return visitChildren(ctx);
  }


};

}  // namespace nnvm
