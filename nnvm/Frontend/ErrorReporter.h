#pragma once

#include "SysYParserBaseVisitor.h"
#include "tree/ParseTree.h"
#include <vector>

namespace nnvm{
using antlr4::RuleContext;    
class ErrorReporter{
    public :
        std::vector<std::string> errors;

        void errorBtype(SysYParser::BtypeContext *ctx, const std::string &msg);

        void errorFuncType(SysYParser::FuncTypeContext * ctx, const std::string &msg);
    
        void errorConstInitVal(SysYParser::ConstInitValContext *ctx, const std::string &msg);

        void errorRecord(antlr4::ParserRuleContext * ctx, const std::string &msg);

        void report();

};
} 





