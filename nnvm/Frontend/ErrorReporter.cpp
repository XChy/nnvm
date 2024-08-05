#include  "ErrorReporter.h"
#include "SysYParserBaseVisitor.h"
#include "tree/ParseTree.h"
#include "Token.h"

using namespace nnvm;
using antlr4::Token;

ErrorReporter::ErrorReporter() {}

void ErrorReporter::errorRecord(antlr4::ParserRuleContext *ctx, const std::string &msg) {
    Token *temp = ctx->getStart();
    size_t line = temp->getLine();
    size_t charPositonInLine = temp->getCharPositionInLine();
    std::string error = "line " + std::to_string(line) + ":" + std::to_string(charPositonInLine) + " : " + msg;
    errors.push_back(error);
}

void ErrorReporter::report() {
    for(const auto& error : errors) {
        std::cerr << error << std::endl;
    }
}