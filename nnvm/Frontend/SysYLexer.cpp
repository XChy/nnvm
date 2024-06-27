
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
      "CONST", "INT", "FLOAT", "VOID", "IF", "ELSE", "WHILE", "BREAK", "CONTINUE", 
      "RETURN", "PLUS", "MINUS", "MUL", "DIV", "MOD", "ASSIGN", "EQ", "NEQ", 
      "LT", "GT", "LE", "GE", "NOT", "AND", "OR", "L_PAREN", "R_PAREN", 
      "L_BRACE", "R_BRACE", "L_BRACKT", "R_BRACKT", "COMMA", "SEMICOLON", 
      "IDENT", "INTEGER_CONST", "FLOAT_CONST", "DecimalFloatingConstant", 
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
      "'break'", "'continue'", "'return'", "'+'", "'-'", "'*'", "'/'", "'%'", 
      "'='", "'=='", "'!='", "'<'", "'>'", "'<='", "'>='", "'!'", "'&&'", 
      "'||'", "'('", "')'", "'{'", "'}'", "'['", "']'", "','", "';'"
    },
    std::vector<std::string>{
      "", "CONST", "INT", "FLOAT", "VOID", "IF", "ELSE", "WHILE", "BREAK", 
      "CONTINUE", "RETURN", "PLUS", "MINUS", "MUL", "DIV", "MOD", "ASSIGN", 
      "EQ", "NEQ", "LT", "GT", "LE", "GE", "NOT", "AND", "OR", "L_PAREN", 
      "R_PAREN", "L_BRACE", "R_BRACE", "L_BRACKT", "R_BRACKT", "COMMA", 
      "SEMICOLON", "IDENT", "INTEGER_CONST", "FLOAT_CONST", "DecimalFloatingConstant", 
      "HexadecimalFloatingConstant", "WS", "LINE_COMMENT", "MULTILINE_COMMENT"
    }
  );
  static const int32_t serializedATNSegment[] = {
  	4,0,41,371,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
  	6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,
  	7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,
  	7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,27,2,28,
  	7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,7,34,2,35,
  	7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,2,41,7,41,2,42,
  	7,42,2,43,7,43,2,44,7,44,2,45,7,45,2,46,7,46,2,47,7,47,2,48,7,48,2,49,
  	7,49,2,50,7,50,1,0,1,0,1,0,1,0,1,0,1,0,1,1,1,1,1,1,1,1,1,2,1,2,1,2,1,
  	2,1,2,1,2,1,3,1,3,1,3,1,3,1,3,1,4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,6,1,6,
  	1,6,1,6,1,6,1,6,1,7,1,7,1,7,1,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,
  	8,1,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,10,1,10,1,11,1,11,1,12,1,12,1,13,
  	1,13,1,14,1,14,1,15,1,15,1,16,1,16,1,16,1,17,1,17,1,17,1,18,1,18,1,19,
  	1,19,1,20,1,20,1,20,1,21,1,21,1,21,1,22,1,22,1,23,1,23,1,23,1,24,1,24,
  	1,24,1,25,1,25,1,26,1,26,1,27,1,27,1,28,1,28,1,29,1,29,1,30,1,30,1,31,
  	1,31,1,32,1,32,1,33,1,33,5,33,215,8,33,10,33,12,33,218,9,33,1,34,1,34,
  	1,34,5,34,223,8,34,10,34,12,34,226,9,34,1,34,1,34,5,34,230,8,34,10,34,
  	12,34,233,9,34,1,34,1,34,1,34,1,34,3,34,239,8,34,1,34,4,34,242,8,34,11,
  	34,12,34,243,3,34,246,8,34,1,35,1,35,3,35,250,8,35,1,36,1,36,3,36,254,
  	8,36,1,36,1,36,1,36,3,36,259,8,36,1,37,1,37,1,37,1,37,1,37,1,37,1,37,
  	1,37,3,37,269,8,37,1,38,3,38,272,8,38,1,38,1,38,1,38,1,38,1,38,3,38,279,
  	8,38,1,39,1,39,3,39,283,8,39,1,39,1,39,1,39,3,39,288,8,39,1,39,3,39,291,
  	8,39,1,40,1,40,1,41,4,41,296,8,41,11,41,12,41,297,1,42,1,42,1,43,1,43,
  	1,43,1,43,3,43,306,8,43,1,44,3,44,309,8,44,1,44,1,44,1,44,1,44,1,44,3,
  	44,316,8,44,1,45,4,45,319,8,45,11,45,12,45,320,1,46,1,46,3,46,325,8,46,
  	1,46,1,46,1,46,3,46,330,8,46,1,46,3,46,333,8,46,1,47,1,47,1,48,4,48,338,
  	8,48,11,48,12,48,339,1,48,1,48,1,49,1,49,1,49,1,49,5,49,348,8,49,10,49,
  	12,49,351,9,49,1,49,3,49,354,8,49,1,49,1,49,1,50,1,50,1,50,1,50,5,50,
  	362,8,50,10,50,12,50,365,9,50,1,50,1,50,1,50,1,50,1,50,2,349,363,0,51,
  	1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,11,23,12,25,13,27,14,
  	29,15,31,16,33,17,35,18,37,19,39,20,41,21,43,22,45,23,47,24,49,25,51,
  	26,53,27,55,28,57,29,59,30,61,31,63,32,65,33,67,34,69,35,71,36,73,37,
  	75,38,77,0,79,0,81,0,83,0,85,0,87,0,89,0,91,0,93,0,95,0,97,39,99,40,101,
  	41,1,0,9,3,0,65,90,95,95,97,122,4,0,48,57,65,90,95,95,97,122,1,0,49,57,
  	1,0,48,57,1,0,48,55,3,0,48,57,65,70,97,102,2,0,43,43,45,45,3,0,9,10,13,
  	13,32,32,1,1,10,10,388,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,
  	0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,
  	1,0,0,0,0,21,1,0,0,0,0,23,1,0,0,0,0,25,1,0,0,0,0,27,1,0,0,0,0,29,1,0,
  	0,0,0,31,1,0,0,0,0,33,1,0,0,0,0,35,1,0,0,0,0,37,1,0,0,0,0,39,1,0,0,0,
  	0,41,1,0,0,0,0,43,1,0,0,0,0,45,1,0,0,0,0,47,1,0,0,0,0,49,1,0,0,0,0,51,
  	1,0,0,0,0,53,1,0,0,0,0,55,1,0,0,0,0,57,1,0,0,0,0,59,1,0,0,0,0,61,1,0,
  	0,0,0,63,1,0,0,0,0,65,1,0,0,0,0,67,1,0,0,0,0,69,1,0,0,0,0,71,1,0,0,0,
  	0,73,1,0,0,0,0,75,1,0,0,0,0,97,1,0,0,0,0,99,1,0,0,0,0,101,1,0,0,0,1,103,
  	1,0,0,0,3,109,1,0,0,0,5,113,1,0,0,0,7,119,1,0,0,0,9,124,1,0,0,0,11,127,
  	1,0,0,0,13,132,1,0,0,0,15,138,1,0,0,0,17,144,1,0,0,0,19,153,1,0,0,0,21,
  	160,1,0,0,0,23,162,1,0,0,0,25,164,1,0,0,0,27,166,1,0,0,0,29,168,1,0,0,
  	0,31,170,1,0,0,0,33,172,1,0,0,0,35,175,1,0,0,0,37,178,1,0,0,0,39,180,
  	1,0,0,0,41,182,1,0,0,0,43,185,1,0,0,0,45,188,1,0,0,0,47,190,1,0,0,0,49,
  	193,1,0,0,0,51,196,1,0,0,0,53,198,1,0,0,0,55,200,1,0,0,0,57,202,1,0,0,
  	0,59,204,1,0,0,0,61,206,1,0,0,0,63,208,1,0,0,0,65,210,1,0,0,0,67,212,
  	1,0,0,0,69,245,1,0,0,0,71,249,1,0,0,0,73,258,1,0,0,0,75,268,1,0,0,0,77,
  	278,1,0,0,0,79,290,1,0,0,0,81,292,1,0,0,0,83,295,1,0,0,0,85,299,1,0,0,
  	0,87,305,1,0,0,0,89,315,1,0,0,0,91,318,1,0,0,0,93,332,1,0,0,0,95,334,
  	1,0,0,0,97,337,1,0,0,0,99,343,1,0,0,0,101,357,1,0,0,0,103,104,5,99,0,
  	0,104,105,5,111,0,0,105,106,5,110,0,0,106,107,5,115,0,0,107,108,5,116,
  	0,0,108,2,1,0,0,0,109,110,5,105,0,0,110,111,5,110,0,0,111,112,5,116,0,
  	0,112,4,1,0,0,0,113,114,5,102,0,0,114,115,5,108,0,0,115,116,5,111,0,0,
  	116,117,5,97,0,0,117,118,5,116,0,0,118,6,1,0,0,0,119,120,5,118,0,0,120,
  	121,5,111,0,0,121,122,5,105,0,0,122,123,5,100,0,0,123,8,1,0,0,0,124,125,
  	5,105,0,0,125,126,5,102,0,0,126,10,1,0,0,0,127,128,5,101,0,0,128,129,
  	5,108,0,0,129,130,5,115,0,0,130,131,5,101,0,0,131,12,1,0,0,0,132,133,
  	5,119,0,0,133,134,5,104,0,0,134,135,5,105,0,0,135,136,5,108,0,0,136,137,
  	5,101,0,0,137,14,1,0,0,0,138,139,5,98,0,0,139,140,5,114,0,0,140,141,5,
  	101,0,0,141,142,5,97,0,0,142,143,5,107,0,0,143,16,1,0,0,0,144,145,5,99,
  	0,0,145,146,5,111,0,0,146,147,5,110,0,0,147,148,5,116,0,0,148,149,5,105,
  	0,0,149,150,5,110,0,0,150,151,5,117,0,0,151,152,5,101,0,0,152,18,1,0,
  	0,0,153,154,5,114,0,0,154,155,5,101,0,0,155,156,5,116,0,0,156,157,5,117,
  	0,0,157,158,5,114,0,0,158,159,5,110,0,0,159,20,1,0,0,0,160,161,5,43,0,
  	0,161,22,1,0,0,0,162,163,5,45,0,0,163,24,1,0,0,0,164,165,5,42,0,0,165,
  	26,1,0,0,0,166,167,5,47,0,0,167,28,1,0,0,0,168,169,5,37,0,0,169,30,1,
  	0,0,0,170,171,5,61,0,0,171,32,1,0,0,0,172,173,5,61,0,0,173,174,5,61,0,
  	0,174,34,1,0,0,0,175,176,5,33,0,0,176,177,5,61,0,0,177,36,1,0,0,0,178,
  	179,5,60,0,0,179,38,1,0,0,0,180,181,5,62,0,0,181,40,1,0,0,0,182,183,5,
  	60,0,0,183,184,5,61,0,0,184,42,1,0,0,0,185,186,5,62,0,0,186,187,5,61,
  	0,0,187,44,1,0,0,0,188,189,5,33,0,0,189,46,1,0,0,0,190,191,5,38,0,0,191,
  	192,5,38,0,0,192,48,1,0,0,0,193,194,5,124,0,0,194,195,5,124,0,0,195,50,
  	1,0,0,0,196,197,5,40,0,0,197,52,1,0,0,0,198,199,5,41,0,0,199,54,1,0,0,
  	0,200,201,5,123,0,0,201,56,1,0,0,0,202,203,5,125,0,0,203,58,1,0,0,0,204,
  	205,5,91,0,0,205,60,1,0,0,0,206,207,5,93,0,0,207,62,1,0,0,0,208,209,5,
  	44,0,0,209,64,1,0,0,0,210,211,5,59,0,0,211,66,1,0,0,0,212,216,7,0,0,0,
  	213,215,7,1,0,0,214,213,1,0,0,0,215,218,1,0,0,0,216,214,1,0,0,0,216,217,
  	1,0,0,0,217,68,1,0,0,0,218,216,1,0,0,0,219,246,5,48,0,0,220,224,7,2,0,
  	0,221,223,7,3,0,0,222,221,1,0,0,0,223,226,1,0,0,0,224,222,1,0,0,0,224,
  	225,1,0,0,0,225,246,1,0,0,0,226,224,1,0,0,0,227,231,5,48,0,0,228,230,
  	7,4,0,0,229,228,1,0,0,0,230,233,1,0,0,0,231,229,1,0,0,0,231,232,1,0,0,
  	0,232,246,1,0,0,0,233,231,1,0,0,0,234,235,5,48,0,0,235,239,5,120,0,0,
  	236,237,5,48,0,0,237,239,5,88,0,0,238,234,1,0,0,0,238,236,1,0,0,0,239,
  	241,1,0,0,0,240,242,7,5,0,0,241,240,1,0,0,0,242,243,1,0,0,0,243,241,1,
  	0,0,0,243,244,1,0,0,0,244,246,1,0,0,0,245,219,1,0,0,0,245,220,1,0,0,0,
  	245,227,1,0,0,0,245,238,1,0,0,0,246,70,1,0,0,0,247,250,3,73,36,0,248,
  	250,3,75,37,0,249,247,1,0,0,0,249,248,1,0,0,0,250,72,1,0,0,0,251,253,
  	3,77,38,0,252,254,3,79,39,0,253,252,1,0,0,0,253,254,1,0,0,0,254,259,1,
  	0,0,0,255,256,3,83,41,0,256,257,3,79,39,0,257,259,1,0,0,0,258,251,1,0,
  	0,0,258,255,1,0,0,0,259,74,1,0,0,0,260,261,3,87,43,0,261,262,3,89,44,
  	0,262,263,3,93,46,0,263,269,1,0,0,0,264,265,3,87,43,0,265,266,3,91,45,
  	0,266,267,3,93,46,0,267,269,1,0,0,0,268,260,1,0,0,0,268,264,1,0,0,0,269,
  	76,1,0,0,0,270,272,3,83,41,0,271,270,1,0,0,0,271,272,1,0,0,0,272,273,
  	1,0,0,0,273,274,5,46,0,0,274,279,3,83,41,0,275,276,3,83,41,0,276,277,
  	5,46,0,0,277,279,1,0,0,0,278,271,1,0,0,0,278,275,1,0,0,0,279,78,1,0,0,
  	0,280,282,5,101,0,0,281,283,3,81,40,0,282,281,1,0,0,0,282,283,1,0,0,0,
  	283,284,1,0,0,0,284,291,3,83,41,0,285,287,5,69,0,0,286,288,3,81,40,0,
  	287,286,1,0,0,0,287,288,1,0,0,0,288,289,1,0,0,0,289,291,3,83,41,0,290,
  	280,1,0,0,0,290,285,1,0,0,0,291,80,1,0,0,0,292,293,7,6,0,0,293,82,1,0,
  	0,0,294,296,3,95,47,0,295,294,1,0,0,0,296,297,1,0,0,0,297,295,1,0,0,0,
  	297,298,1,0,0,0,298,84,1,0,0,0,299,300,7,5,0,0,300,86,1,0,0,0,301,302,
  	5,48,0,0,302,306,5,120,0,0,303,304,5,48,0,0,304,306,5,88,0,0,305,301,
  	1,0,0,0,305,303,1,0,0,0,306,88,1,0,0,0,307,309,3,91,45,0,308,307,1,0,
  	0,0,308,309,1,0,0,0,309,310,1,0,0,0,310,311,5,46,0,0,311,316,3,91,45,
  	0,312,313,3,91,45,0,313,314,5,46,0,0,314,316,1,0,0,0,315,308,1,0,0,0,
  	315,312,1,0,0,0,316,90,1,0,0,0,317,319,3,85,42,0,318,317,1,0,0,0,319,
  	320,1,0,0,0,320,318,1,0,0,0,320,321,1,0,0,0,321,92,1,0,0,0,322,324,5,
  	80,0,0,323,325,3,81,40,0,324,323,1,0,0,0,324,325,1,0,0,0,325,326,1,0,
  	0,0,326,333,3,83,41,0,327,329,5,112,0,0,328,330,3,81,40,0,329,328,1,0,
  	0,0,329,330,1,0,0,0,330,331,1,0,0,0,331,333,3,83,41,0,332,322,1,0,0,0,
  	332,327,1,0,0,0,333,94,1,0,0,0,334,335,7,3,0,0,335,96,1,0,0,0,336,338,
  	7,7,0,0,337,336,1,0,0,0,338,339,1,0,0,0,339,337,1,0,0,0,339,340,1,0,0,
  	0,340,341,1,0,0,0,341,342,6,48,0,0,342,98,1,0,0,0,343,344,5,47,0,0,344,
  	345,5,47,0,0,345,349,1,0,0,0,346,348,9,0,0,0,347,346,1,0,0,0,348,351,
  	1,0,0,0,349,350,1,0,0,0,349,347,1,0,0,0,350,353,1,0,0,0,351,349,1,0,0,
  	0,352,354,7,8,0,0,353,352,1,0,0,0,354,355,1,0,0,0,355,356,6,49,0,0,356,
  	100,1,0,0,0,357,358,5,47,0,0,358,359,5,42,0,0,359,363,1,0,0,0,360,362,
  	9,0,0,0,361,360,1,0,0,0,362,365,1,0,0,0,363,364,1,0,0,0,363,361,1,0,0,
  	0,364,366,1,0,0,0,365,363,1,0,0,0,366,367,5,42,0,0,367,368,5,47,0,0,368,
  	369,1,0,0,0,369,370,6,50,0,0,370,102,1,0,0,0,28,0,216,224,231,238,243,
  	245,249,253,258,268,271,278,282,287,290,297,305,308,315,320,324,329,332,
  	339,349,353,363,1,6,0,0
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
