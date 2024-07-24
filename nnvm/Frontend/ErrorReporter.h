#pragma once

#include "SysYParserBaseVisitor.h"
#include "tree/ParseTree.h"

namespace nnvm{
class ErrorReporter{
    public :
        void errorBtype(SysYParser::BtypeContext *ctx, const std::string &msg);

        void errorFuncType(SysYParser::FuncTypeContext * ctx, const std::string &msg);
    
        void errorConstInitVal(SysYParser::ConstInitValContext *ctx, const std::string &msg);

    protected:
        virtual void report(size_t line,size_t charPositionInLine,  const std::string &msg);
};
} 





