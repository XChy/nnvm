
// Generated from ./nnvm/Frontend/SysYLexer.g4 by ANTLR 4.12.0


#include "SysYLexer.h"


using namespace antlr4;

using namespace nnvm;


using namespace antlr4;

namespace {

struct SysYLexerStaticData final {
  SysYLexerStaticData(std::vector<std::string> ruleNames,
                          std::vector<std::string> channelNames,
                          std::vector<std::string> modeNames,
                          std::vector<std::string> literalNames,
                          std::vector<std::string> symbolicNames)
      : ruleNames(std::move(ruleNames)), channelNames(std::move(channelNames)),
        modeNames(std::move(modeNames)), literalNames(std::move(literalNames)),
        symbolicNames(std::move(symbolicNames)),
        vocabulary(this->literalNames, this->symbolicNames) {}

  SysYLexerStaticData(const SysYLexerStaticData&) = delete;
  SysYLexerStaticData(SysYLexerStaticData&&) = delete;
  SysYLexerStaticData& operator=(const SysYLexerStaticData&) = delete;
  SysYLexerStaticData& operator=(SysYLexerStaticData&&) = delete;

  std::vector<antlr4::dfa::DFA> decisionToDFA;
  antlr4::atn::PredictionContextCache sharedContextCache;
  const std::vector<std::string> ruleNames;
  const std::vector<std::string> channelNames;
  const std::vector<std::string> modeNames;
  const std::vector<std::string> literalNames;
  const std::vector<std::string> symbolicNames;
  const antlr4::dfa::Vocabulary vocabulary;
  antlr4::atn::SerializedATNView serializedATN;
  std::unique_ptr<antlr4::atn::ATN> atn;
};

::antlr4::internal::OnceFlag sysylexerLexerOnceFlag;
SysYLexerStaticData *sysylexerLexerStaticData = nullptr;

void sysylexerLexerInitialize() {
  assert(sysylexerLexerStaticData == nullptr);
  auto staticData = std::make_unique<SysYLexerStaticData>(
    std::vector<std::string>{
      "CONST", "INT", "FLOAT", "VOID", "IF", "ELSE", "WHILE", "FOR", "BREAK", 
      "CONTINUE", "RETURN", "PLUS", "MINUS", "MUL", "DIV", "MOD", "ASSIGN", 
      "SELF_PLUS", "SELF_MINUS", "PLUS_ASSIGN", "SUB_ASSIGN", "MULT_ASSIGN", 
      "DIV_ASSIGN", "MOD_ASSIGN", "AND_ASSIGN", "OR_ASSIGN", "XOR_ASSIGN", 
      "SHL_ASSIGN", "SHR_ASSIGN", "EQ", "NEQ", "LT", "GT", "LE", "GE", "NOT", 
      "AND", "OR", "BITAND", "BITOR", "BITXOR", "BITNOT", "BITSHL", "BITSHR", 
      "L_PAREN", "R_PAREN", "L_BRACE", "R_BRACE", "L_BRACKT", "R_BRACKT", 
      "COMMA", "SEMICOLON", "IDENT", "INTEGER_CONST", "FLOAT_CONST", "DecimalFloatingConstant", 
      "HexadecimalFloatingConstant", "FractionalConstant", "ExponentPart", 
      "Sign", "DigitSequence", "HexadecimalDigit", "HexadecimalPrefix", 
      "HexadecimalFractionalConstant", "HexadecimalDigitSequence", "BinaryExponentPart", 
      "DIGIT", "WS", "LINE_COMMENT", "MULTILINE_COMMENT"
    },
    std::vector<std::string>{
      "DEFAULT_TOKEN_CHANNEL", "HIDDEN"
    },
    std::vector<std::string>{
      "DEFAULT_MODE"
    },
    std::vector<std::string>{
      "", "'const'", "'int'", "'float'", "'void'", "'if'", "'else'", "'while'", 
      "'for'", "'break'", "'continue'", "'return'", "'+'", "'-'", "'*'", 
      "'/'", "'%'", "'='", "'++'", "'--'", "'+='", "'-='", "'*='", "'/='", 
      "'%='", "'&='", "'|='", "'^='", "'<<='", "'>>='", "'=='", "'!='", 
      "'<'", "'>'", "'<='", "'>='", "'!'", "'&&'", "'||'", "'&'", "'|'", 
      "'^'", "'~'", "'<<'", "'>>'", "'('", "')'", "'{'", "'}'", "'['", "']'", 
      "','", "';'"
    },
    std::vector<std::string>{
      "", "CONST", "INT", "FLOAT", "VOID", "IF", "ELSE", "WHILE", "FOR", 
      "BREAK", "CONTINUE", "RETURN", "PLUS", "MINUS", "MUL", "DIV", "MOD", 
      "ASSIGN", "SELF_PLUS", "SELF_MINUS", "PLUS_ASSIGN", "SUB_ASSIGN", 
      "MULT_ASSIGN", "DIV_ASSIGN", "MOD_ASSIGN", "AND_ASSIGN", "OR_ASSIGN", 
      "XOR_ASSIGN", "SHL_ASSIGN", "SHR_ASSIGN", "EQ", "NEQ", "LT", "GT", 
      "LE", "GE", "NOT", "AND", "OR", "BITAND", "BITOR", "BITXOR", "BITNOT", 
      "BITSHL", "BITSHR", "L_PAREN", "R_PAREN", "L_BRACE", "R_BRACE", "L_BRACKT", 
      "R_BRACKT", "COMMA", "SEMICOLON", "IDENT", "INTEGER_CONST", "FLOAT_CONST", 
      "DecimalFloatingConstant", "HexadecimalFloatingConstant", "WS", "LINE_COMMENT", 
      "MULTILINE_COMMENT"
    }
  );
  static const int32_t serializedATNSegment[] = {
  	4,0,60,465,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
  	6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,
  	7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,
  	7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,27,2,28,
  	7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,7,34,2,35,
  	7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,2,41,7,41,2,42,
  	7,42,2,43,7,43,2,44,7,44,2,45,7,45,2,46,7,46,2,47,7,47,2,48,7,48,2,49,
  	7,49,2,50,7,50,2,51,7,51,2,52,7,52,2,53,7,53,2,54,7,54,2,55,7,55,2,56,
  	7,56,2,57,7,57,2,58,7,58,2,59,7,59,2,60,7,60,2,61,7,61,2,62,7,62,2,63,
  	7,63,2,64,7,64,2,65,7,65,2,66,7,66,2,67,7,67,2,68,7,68,2,69,7,69,1,0,
  	1,0,1,0,1,0,1,0,1,0,1,1,1,1,1,1,1,1,1,2,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,
  	3,1,3,1,3,1,4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,6,1,6,1,6,1,6,1,6,1,6,1,7,
  	1,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,
  	9,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,11,1,11,1,12,1,12,1,13,1,13,1,
  	14,1,14,1,15,1,15,1,16,1,16,1,17,1,17,1,17,1,18,1,18,1,18,1,19,1,19,1,
  	19,1,20,1,20,1,20,1,21,1,21,1,21,1,22,1,22,1,22,1,23,1,23,1,23,1,24,1,
  	24,1,24,1,25,1,25,1,25,1,26,1,26,1,26,1,27,1,27,1,27,1,27,1,28,1,28,1,
  	28,1,28,1,29,1,29,1,29,1,30,1,30,1,30,1,31,1,31,1,32,1,32,1,33,1,33,1,
  	33,1,34,1,34,1,34,1,35,1,35,1,36,1,36,1,36,1,37,1,37,1,37,1,38,1,38,1,
  	39,1,39,1,40,1,40,1,41,1,41,1,42,1,42,1,42,1,43,1,43,1,43,1,44,1,44,1,
  	45,1,45,1,46,1,46,1,47,1,47,1,48,1,48,1,49,1,49,1,50,1,50,1,51,1,51,1,
  	52,1,52,5,52,309,8,52,10,52,12,52,312,9,52,1,53,1,53,1,53,5,53,317,8,
  	53,10,53,12,53,320,9,53,1,53,1,53,5,53,324,8,53,10,53,12,53,327,9,53,
  	1,53,1,53,1,53,1,53,3,53,333,8,53,1,53,4,53,336,8,53,11,53,12,53,337,
  	3,53,340,8,53,1,54,1,54,3,54,344,8,54,1,55,1,55,3,55,348,8,55,1,55,1,
  	55,1,55,3,55,353,8,55,1,56,1,56,1,56,1,56,1,56,1,56,1,56,1,56,3,56,363,
  	8,56,1,57,3,57,366,8,57,1,57,1,57,1,57,1,57,1,57,3,57,373,8,57,1,58,1,
  	58,3,58,377,8,58,1,58,1,58,1,58,3,58,382,8,58,1,58,3,58,385,8,58,1,59,
  	1,59,1,60,4,60,390,8,60,11,60,12,60,391,1,61,1,61,1,62,1,62,1,62,1,62,
  	3,62,400,8,62,1,63,3,63,403,8,63,1,63,1,63,1,63,1,63,1,63,3,63,410,8,
  	63,1,64,4,64,413,8,64,11,64,12,64,414,1,65,1,65,3,65,419,8,65,1,65,1,
  	65,1,65,3,65,424,8,65,1,65,3,65,427,8,65,1,66,1,66,1,67,4,67,432,8,67,
  	11,67,12,67,433,1,67,1,67,1,68,1,68,1,68,1,68,5,68,442,8,68,10,68,12,
  	68,445,9,68,1,68,3,68,448,8,68,1,68,1,68,1,69,1,69,1,69,1,69,5,69,456,
  	8,69,10,69,12,69,459,9,69,1,69,1,69,1,69,1,69,1,69,2,443,457,0,70,1,1,
  	3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,11,23,12,25,13,27,14,29,
  	15,31,16,33,17,35,18,37,19,39,20,41,21,43,22,45,23,47,24,49,25,51,26,
  	53,27,55,28,57,29,59,30,61,31,63,32,65,33,67,34,69,35,71,36,73,37,75,
  	38,77,39,79,40,81,41,83,42,85,43,87,44,89,45,91,46,93,47,95,48,97,49,
  	99,50,101,51,103,52,105,53,107,54,109,55,111,56,113,57,115,0,117,0,119,
  	0,121,0,123,0,125,0,127,0,129,0,131,0,133,0,135,58,137,59,139,60,1,0,
  	9,3,0,65,90,95,95,97,122,4,0,48,57,65,90,95,95,97,122,1,0,49,57,1,0,48,
  	57,1,0,48,55,3,0,48,57,65,70,97,102,2,0,43,43,45,45,3,0,9,10,13,13,32,
  	32,1,1,10,10,482,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,
  	1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,
  	0,0,0,21,1,0,0,0,0,23,1,0,0,0,0,25,1,0,0,0,0,27,1,0,0,0,0,29,1,0,0,0,
  	0,31,1,0,0,0,0,33,1,0,0,0,0,35,1,0,0,0,0,37,1,0,0,0,0,39,1,0,0,0,0,41,
  	1,0,0,0,0,43,1,0,0,0,0,45,1,0,0,0,0,47,1,0,0,0,0,49,1,0,0,0,0,51,1,0,
  	0,0,0,53,1,0,0,0,0,55,1,0,0,0,0,57,1,0,0,0,0,59,1,0,0,0,0,61,1,0,0,0,
  	0,63,1,0,0,0,0,65,1,0,0,0,0,67,1,0,0,0,0,69,1,0,0,0,0,71,1,0,0,0,0,73,
  	1,0,0,0,0,75,1,0,0,0,0,77,1,0,0,0,0,79,1,0,0,0,0,81,1,0,0,0,0,83,1,0,
  	0,0,0,85,1,0,0,0,0,87,1,0,0,0,0,89,1,0,0,0,0,91,1,0,0,0,0,93,1,0,0,0,
  	0,95,1,0,0,0,0,97,1,0,0,0,0,99,1,0,0,0,0,101,1,0,0,0,0,103,1,0,0,0,0,
  	105,1,0,0,0,0,107,1,0,0,0,0,109,1,0,0,0,0,111,1,0,0,0,0,113,1,0,0,0,0,
  	135,1,0,0,0,0,137,1,0,0,0,0,139,1,0,0,0,1,141,1,0,0,0,3,147,1,0,0,0,5,
  	151,1,0,0,0,7,157,1,0,0,0,9,162,1,0,0,0,11,165,1,0,0,0,13,170,1,0,0,0,
  	15,176,1,0,0,0,17,180,1,0,0,0,19,186,1,0,0,0,21,195,1,0,0,0,23,202,1,
  	0,0,0,25,204,1,0,0,0,27,206,1,0,0,0,29,208,1,0,0,0,31,210,1,0,0,0,33,
  	212,1,0,0,0,35,214,1,0,0,0,37,217,1,0,0,0,39,220,1,0,0,0,41,223,1,0,0,
  	0,43,226,1,0,0,0,45,229,1,0,0,0,47,232,1,0,0,0,49,235,1,0,0,0,51,238,
  	1,0,0,0,53,241,1,0,0,0,55,244,1,0,0,0,57,248,1,0,0,0,59,252,1,0,0,0,61,
  	255,1,0,0,0,63,258,1,0,0,0,65,260,1,0,0,0,67,262,1,0,0,0,69,265,1,0,0,
  	0,71,268,1,0,0,0,73,270,1,0,0,0,75,273,1,0,0,0,77,276,1,0,0,0,79,278,
  	1,0,0,0,81,280,1,0,0,0,83,282,1,0,0,0,85,284,1,0,0,0,87,287,1,0,0,0,89,
  	290,1,0,0,0,91,292,1,0,0,0,93,294,1,0,0,0,95,296,1,0,0,0,97,298,1,0,0,
  	0,99,300,1,0,0,0,101,302,1,0,0,0,103,304,1,0,0,0,105,306,1,0,0,0,107,
  	339,1,0,0,0,109,343,1,0,0,0,111,352,1,0,0,0,113,362,1,0,0,0,115,372,1,
  	0,0,0,117,384,1,0,0,0,119,386,1,0,0,0,121,389,1,0,0,0,123,393,1,0,0,0,
  	125,399,1,0,0,0,127,409,1,0,0,0,129,412,1,0,0,0,131,426,1,0,0,0,133,428,
  	1,0,0,0,135,431,1,0,0,0,137,437,1,0,0,0,139,451,1,0,0,0,141,142,5,99,
  	0,0,142,143,5,111,0,0,143,144,5,110,0,0,144,145,5,115,0,0,145,146,5,116,
  	0,0,146,2,1,0,0,0,147,148,5,105,0,0,148,149,5,110,0,0,149,150,5,116,0,
  	0,150,4,1,0,0,0,151,152,5,102,0,0,152,153,5,108,0,0,153,154,5,111,0,0,
  	154,155,5,97,0,0,155,156,5,116,0,0,156,6,1,0,0,0,157,158,5,118,0,0,158,
  	159,5,111,0,0,159,160,5,105,0,0,160,161,5,100,0,0,161,8,1,0,0,0,162,163,
  	5,105,0,0,163,164,5,102,0,0,164,10,1,0,0,0,165,166,5,101,0,0,166,167,
  	5,108,0,0,167,168,5,115,0,0,168,169,5,101,0,0,169,12,1,0,0,0,170,171,
  	5,119,0,0,171,172,5,104,0,0,172,173,5,105,0,0,173,174,5,108,0,0,174,175,
  	5,101,0,0,175,14,1,0,0,0,176,177,5,102,0,0,177,178,5,111,0,0,178,179,
  	5,114,0,0,179,16,1,0,0,0,180,181,5,98,0,0,181,182,5,114,0,0,182,183,5,
  	101,0,0,183,184,5,97,0,0,184,185,5,107,0,0,185,18,1,0,0,0,186,187,5,99,
  	0,0,187,188,5,111,0,0,188,189,5,110,0,0,189,190,5,116,0,0,190,191,5,105,
  	0,0,191,192,5,110,0,0,192,193,5,117,0,0,193,194,5,101,0,0,194,20,1,0,
  	0,0,195,196,5,114,0,0,196,197,5,101,0,0,197,198,5,116,0,0,198,199,5,117,
  	0,0,199,200,5,114,0,0,200,201,5,110,0,0,201,22,1,0,0,0,202,203,5,43,0,
  	0,203,24,1,0,0,0,204,205,5,45,0,0,205,26,1,0,0,0,206,207,5,42,0,0,207,
  	28,1,0,0,0,208,209,5,47,0,0,209,30,1,0,0,0,210,211,5,37,0,0,211,32,1,
  	0,0,0,212,213,5,61,0,0,213,34,1,0,0,0,214,215,5,43,0,0,215,216,5,43,0,
  	0,216,36,1,0,0,0,217,218,5,45,0,0,218,219,5,45,0,0,219,38,1,0,0,0,220,
  	221,5,43,0,0,221,222,5,61,0,0,222,40,1,0,0,0,223,224,5,45,0,0,224,225,
  	5,61,0,0,225,42,1,0,0,0,226,227,5,42,0,0,227,228,5,61,0,0,228,44,1,0,
  	0,0,229,230,5,47,0,0,230,231,5,61,0,0,231,46,1,0,0,0,232,233,5,37,0,0,
  	233,234,5,61,0,0,234,48,1,0,0,0,235,236,5,38,0,0,236,237,5,61,0,0,237,
  	50,1,0,0,0,238,239,5,124,0,0,239,240,5,61,0,0,240,52,1,0,0,0,241,242,
  	5,94,0,0,242,243,5,61,0,0,243,54,1,0,0,0,244,245,5,60,0,0,245,246,5,60,
  	0,0,246,247,5,61,0,0,247,56,1,0,0,0,248,249,5,62,0,0,249,250,5,62,0,0,
  	250,251,5,61,0,0,251,58,1,0,0,0,252,253,5,61,0,0,253,254,5,61,0,0,254,
  	60,1,0,0,0,255,256,5,33,0,0,256,257,5,61,0,0,257,62,1,0,0,0,258,259,5,
  	60,0,0,259,64,1,0,0,0,260,261,5,62,0,0,261,66,1,0,0,0,262,263,5,60,0,
  	0,263,264,5,61,0,0,264,68,1,0,0,0,265,266,5,62,0,0,266,267,5,61,0,0,267,
  	70,1,0,0,0,268,269,5,33,0,0,269,72,1,0,0,0,270,271,5,38,0,0,271,272,5,
  	38,0,0,272,74,1,0,0,0,273,274,5,124,0,0,274,275,5,124,0,0,275,76,1,0,
  	0,0,276,277,5,38,0,0,277,78,1,0,0,0,278,279,5,124,0,0,279,80,1,0,0,0,
  	280,281,5,94,0,0,281,82,1,0,0,0,282,283,5,126,0,0,283,84,1,0,0,0,284,
  	285,5,60,0,0,285,286,5,60,0,0,286,86,1,0,0,0,287,288,5,62,0,0,288,289,
  	5,62,0,0,289,88,1,0,0,0,290,291,5,40,0,0,291,90,1,0,0,0,292,293,5,41,
  	0,0,293,92,1,0,0,0,294,295,5,123,0,0,295,94,1,0,0,0,296,297,5,125,0,0,
  	297,96,1,0,0,0,298,299,5,91,0,0,299,98,1,0,0,0,300,301,5,93,0,0,301,100,
  	1,0,0,0,302,303,5,44,0,0,303,102,1,0,0,0,304,305,5,59,0,0,305,104,1,0,
  	0,0,306,310,7,0,0,0,307,309,7,1,0,0,308,307,1,0,0,0,309,312,1,0,0,0,310,
  	308,1,0,0,0,310,311,1,0,0,0,311,106,1,0,0,0,312,310,1,0,0,0,313,340,5,
  	48,0,0,314,318,7,2,0,0,315,317,7,3,0,0,316,315,1,0,0,0,317,320,1,0,0,
  	0,318,316,1,0,0,0,318,319,1,0,0,0,319,340,1,0,0,0,320,318,1,0,0,0,321,
  	325,5,48,0,0,322,324,7,4,0,0,323,322,1,0,0,0,324,327,1,0,0,0,325,323,
  	1,0,0,0,325,326,1,0,0,0,326,340,1,0,0,0,327,325,1,0,0,0,328,329,5,48,
  	0,0,329,333,5,120,0,0,330,331,5,48,0,0,331,333,5,88,0,0,332,328,1,0,0,
  	0,332,330,1,0,0,0,333,335,1,0,0,0,334,336,7,5,0,0,335,334,1,0,0,0,336,
  	337,1,0,0,0,337,335,1,0,0,0,337,338,1,0,0,0,338,340,1,0,0,0,339,313,1,
  	0,0,0,339,314,1,0,0,0,339,321,1,0,0,0,339,332,1,0,0,0,340,108,1,0,0,0,
  	341,344,3,111,55,0,342,344,3,113,56,0,343,341,1,0,0,0,343,342,1,0,0,0,
  	344,110,1,0,0,0,345,347,3,115,57,0,346,348,3,117,58,0,347,346,1,0,0,0,
  	347,348,1,0,0,0,348,353,1,0,0,0,349,350,3,121,60,0,350,351,3,117,58,0,
  	351,353,1,0,0,0,352,345,1,0,0,0,352,349,1,0,0,0,353,112,1,0,0,0,354,355,
  	3,125,62,0,355,356,3,127,63,0,356,357,3,131,65,0,357,363,1,0,0,0,358,
  	359,3,125,62,0,359,360,3,129,64,0,360,361,3,131,65,0,361,363,1,0,0,0,
  	362,354,1,0,0,0,362,358,1,0,0,0,363,114,1,0,0,0,364,366,3,121,60,0,365,
  	364,1,0,0,0,365,366,1,0,0,0,366,367,1,0,0,0,367,368,5,46,0,0,368,373,
  	3,121,60,0,369,370,3,121,60,0,370,371,5,46,0,0,371,373,1,0,0,0,372,365,
  	1,0,0,0,372,369,1,0,0,0,373,116,1,0,0,0,374,376,5,101,0,0,375,377,3,119,
  	59,0,376,375,1,0,0,0,376,377,1,0,0,0,377,378,1,0,0,0,378,385,3,121,60,
  	0,379,381,5,69,0,0,380,382,3,119,59,0,381,380,1,0,0,0,381,382,1,0,0,0,
  	382,383,1,0,0,0,383,385,3,121,60,0,384,374,1,0,0,0,384,379,1,0,0,0,385,
  	118,1,0,0,0,386,387,7,6,0,0,387,120,1,0,0,0,388,390,3,133,66,0,389,388,
  	1,0,0,0,390,391,1,0,0,0,391,389,1,0,0,0,391,392,1,0,0,0,392,122,1,0,0,
  	0,393,394,7,5,0,0,394,124,1,0,0,0,395,396,5,48,0,0,396,400,5,120,0,0,
  	397,398,5,48,0,0,398,400,5,88,0,0,399,395,1,0,0,0,399,397,1,0,0,0,400,
  	126,1,0,0,0,401,403,3,129,64,0,402,401,1,0,0,0,402,403,1,0,0,0,403,404,
  	1,0,0,0,404,405,5,46,0,0,405,410,3,129,64,0,406,407,3,129,64,0,407,408,
  	5,46,0,0,408,410,1,0,0,0,409,402,1,0,0,0,409,406,1,0,0,0,410,128,1,0,
  	0,0,411,413,3,123,61,0,412,411,1,0,0,0,413,414,1,0,0,0,414,412,1,0,0,
  	0,414,415,1,0,0,0,415,130,1,0,0,0,416,418,5,80,0,0,417,419,3,119,59,0,
  	418,417,1,0,0,0,418,419,1,0,0,0,419,420,1,0,0,0,420,427,3,121,60,0,421,
  	423,5,112,0,0,422,424,3,119,59,0,423,422,1,0,0,0,423,424,1,0,0,0,424,
  	425,1,0,0,0,425,427,3,121,60,0,426,416,1,0,0,0,426,421,1,0,0,0,427,132,
  	1,0,0,0,428,429,7,3,0,0,429,134,1,0,0,0,430,432,7,7,0,0,431,430,1,0,0,
  	0,432,433,1,0,0,0,433,431,1,0,0,0,433,434,1,0,0,0,434,435,1,0,0,0,435,
  	436,6,67,0,0,436,136,1,0,0,0,437,438,5,47,0,0,438,439,5,47,0,0,439,443,
  	1,0,0,0,440,442,9,0,0,0,441,440,1,0,0,0,442,445,1,0,0,0,443,444,1,0,0,
  	0,443,441,1,0,0,0,444,447,1,0,0,0,445,443,1,0,0,0,446,448,7,8,0,0,447,
  	446,1,0,0,0,448,449,1,0,0,0,449,450,6,68,0,0,450,138,1,0,0,0,451,452,
  	5,47,0,0,452,453,5,42,0,0,453,457,1,0,0,0,454,456,9,0,0,0,455,454,1,0,
  	0,0,456,459,1,0,0,0,457,458,1,0,0,0,457,455,1,0,0,0,458,460,1,0,0,0,459,
  	457,1,0,0,0,460,461,5,42,0,0,461,462,5,47,0,0,462,463,1,0,0,0,463,464,
  	6,69,0,0,464,140,1,0,0,0,28,0,310,318,325,332,337,339,343,347,352,362,
  	365,372,376,381,384,391,399,402,409,414,418,423,426,433,443,447,457,1,
  	6,0,0
  };
  staticData->serializedATN = antlr4::atn::SerializedATNView(serializedATNSegment, sizeof(serializedATNSegment) / sizeof(serializedATNSegment[0]));

  antlr4::atn::ATNDeserializer deserializer;
  staticData->atn = deserializer.deserialize(staticData->serializedATN);

  const size_t count = staticData->atn->getNumberOfDecisions();
  staticData->decisionToDFA.reserve(count);
  for (size_t i = 0; i < count; i++) { 
    staticData->decisionToDFA.emplace_back(staticData->atn->getDecisionState(i), i);
  }
  sysylexerLexerStaticData = staticData.release();
}

}

SysYLexer::SysYLexer(CharStream *input) : Lexer(input) {
  SysYLexer::initialize();
  _interpreter = new atn::LexerATNSimulator(this, *sysylexerLexerStaticData->atn, sysylexerLexerStaticData->decisionToDFA, sysylexerLexerStaticData->sharedContextCache);
}

SysYLexer::~SysYLexer() {
  delete _interpreter;
}

std::string SysYLexer::getGrammarFileName() const {
  return "SysYLexer.g4";
}

const std::vector<std::string>& SysYLexer::getRuleNames() const {
  return sysylexerLexerStaticData->ruleNames;
}

const std::vector<std::string>& SysYLexer::getChannelNames() const {
  return sysylexerLexerStaticData->channelNames;
}

const std::vector<std::string>& SysYLexer::getModeNames() const {
  return sysylexerLexerStaticData->modeNames;
}

const dfa::Vocabulary& SysYLexer::getVocabulary() const {
  return sysylexerLexerStaticData->vocabulary;
}

antlr4::atn::SerializedATNView SysYLexer::getSerializedATN() const {
  return sysylexerLexerStaticData->serializedATN;
}

const atn::ATN& SysYLexer::getATN() const {
  return *sysylexerLexerStaticData->atn;
}




void SysYLexer::initialize() {
  ::antlr4::internal::call_once(sysylexerLexerOnceFlag, sysylexerLexerInitialize);
}
