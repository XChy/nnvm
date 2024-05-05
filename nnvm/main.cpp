#include "ANTLRInputStream.h"
#include "Backend/RISCV/RISCVBackend.h"
#include "Frontend/IRGenerator.h"
#include "Frontend/SysYLexer.h"
#include "Frontend/SysYParser.h"
#include "Transform/Opt.h"
#include "Utils/Debug.h"
#include <fstream>
#include <iostream>
#include <string>

using namespace nnvm;
using std::string;

static string sourceFile;
static string outputFile;

int main(int argc, char **argv) {
  for (int i = 0; i < argc; i++) {
    string arg = argv[i];
    if (arg[0] == '-') {
      // TODO: parse arguments
    } else {
      sourceFile = arg;
    }
  }

  debug(std::cout << "Reading source " << sourceFile << "\n");

  std::ifstream inputStream;
  Module ir;
  IRGenerator irgen;
  RISCVBackend backend;
  Optimizer optimizer;

  inputStream.open(sourceFile);
  antlr4::ANTLRInputStream input(inputStream);
  SysYLexer lexer(&input);
  antlr4::CommonTokenStream tokens(&lexer);
  SysYParser parser(&tokens);

  antlr4::tree::ParseTree *tree = parser.program();
  debug(std::cerr << "Parsing done!"
                  << "\n");
  inputStream.close();

  irgen.emitIR(tree, &ir);

  debug(std::cerr << "IRGen done!"
                  << "\n");

  optimizer.transform(&ir);
  debug(std::cerr << "Opt done!"
                  << "\n");

  debug(std::cerr << ir.dump() << "\n");

  if (outputFile.empty()) {
    backend.emit(ir, std::cout);
  } else {
    std::ofstream outputStream;
    outputStream.open(outputFile);
    backend.emit(ir, outputStream);
    outputStream.close();
  }
}
