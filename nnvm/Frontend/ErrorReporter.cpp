#include  "ErrorReporter.h"
#include "SysYParserBaseVisitor.h"
#include "tree/ParseTree.h"
#include "Token.h"

using namespace nnvm;
using antlr4::Token;

ErrorReporter::ErrorReporter() {}

void ErrorReporter::errorBtype(SysYParser::BtypeContext *ctx, const std::string &msg) {
    Token *temp = ctx->getStart();
    size_t line = temp->getLine();
    size_t charPositonInLine = temp->getCharPositionInLine();
    ErrorReporter::report(line, charPositonInLine, msg);
}


void ErrorReporter::errorFuncType(SysYParser::FuncTypeContext *ctx, const std::string &msg) {
    Token *temp = ctx->getStart();
    size_t line = temp->getLine();
    size_t charPositonInLine = temp->getCharPositionInLine();
    ErrorReporter::report(line, charPositonInLine, msg);
}

void ErrorReporter::errorConstInitVal(SysYParser::ConstInitValContext *ctx, const std::string &msg) {
    Token *temp = ctx->getStart();
    size_t line = temp->getLine();
    size_t charPositonInLine = temp->getCharPositionInLine();
    ErrorReporter::report(line, charPositonInLine, msg);
}

void ErrorReporter::report(size_t line,size_t charPositionInLine,  const std::string &msg) {
    std::cerr << "line " << line << ":" << charPositionInLine << ": " << msg << std::endl;
}