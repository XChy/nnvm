#include "ANTLRInputStream.h"
#include "Frontend/SysYLexer.h"
#include "Frontend/SysYParser.h"
#include "Utils/Debug.h"
#include <fstream>
#include <string>

using std::string;

string sourceFile;

int main(int argc, char **argv) {
  for (int i = 0; i < argc; i++) {
    string arg = argv[i];
    if (arg[0] == '-') {

    } else {
      sourceFile = arg;
    }
  }

  debug(std::cout << "Reading source " << sourceFile << "\n");

  std::ifstream stream;
  stream.open(sourceFile);
  antlr4::ANTLRInputStream input(stream);
  SysYLexer lexer(&input);

  antlr4::CommonTokenStream tokens(&lexer);
  SysYParser parser(&tokens);

  antlr4::tree::ParseTree *tree = parser.compUnit();
}
