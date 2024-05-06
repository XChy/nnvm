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
static bool dumpIR;
static bool dumpIRAfterOpt;
static bool dumpAssembly;

int main(int argc, char **argv) {
  for (int i = 0; i < argc; i++) {
    string arg = argv[i];
    if (arg[0] == '-') {
      if (arg == "-dump-ir")
        dumpIR = true;
      else if (arg == "-dump-opt-ir")
        dumpIRAfterOpt = true;
      else if (arg == "-dump-asm")
        dumpAssembly = true;
      else if (arg == "-o")
        // TODO: may error?
        outputFile = argv[i + 1];
      else
        nnvm_unreachable("Not implemented")

      // TODO: parse arguments
    } else {
      sourceFile = arg;
    }
  }

  debug(std::cerr << "Reading source " << sourceFile << "\n");

  std::ifstream inputStream;
  Module ir;
  IRGenerator irgen;
  riscv::RISCVBackend backend;
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
  if (dumpIR)
    std::cout << ir.dump() << "\n";

  optimizer.transform(&ir);
  debug(std::cerr << "Opt done!"
                  << "\n");

  if (dumpIRAfterOpt)
    std::cout << ir.dump() << "\n";

  if (dumpAssembly)
    backend.emit(ir, std::cout);

  if (!outputFile.empty()) {
    std::ofstream outputStream;
    outputStream.open(outputFile);
    backend.emit(ir, outputStream);
    outputStream.close();
  }
}
