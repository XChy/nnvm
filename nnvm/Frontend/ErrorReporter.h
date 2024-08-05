#pragma once

#include "SysYParserBaseVisitor.h"
#include "tree/ParseTree.h"
#include <vector>

namespace nnvm{
using antlr4::RuleContext;    
class ErrorReporter{
    public :
        std::vector<std::string> errors;

        void errorRecord(antlr4::ParserRuleContext * ctx, const std::string &msg);

        void report();
};
} 





