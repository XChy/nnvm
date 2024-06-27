#include "ANTLRErrorStrategy.h"
#include "ANTLRInputStream.h"
#include "Backend/LLVM/LLVMBackend.h"
#include "Backend/RISCV/RISCVBackend.h"
#include "BailErrorStrategy.h"
#include "Exceptions.h"
#include "Frontend/IRGenerator.h"
#include "Frontend/SysYLexer.h"
#include "Frontend/SysYParser.h"
#include "Transform/Opt.h"
#include "Utils/Debug.h"
#include "atn/ATNSimulator.h"
#include "atn/ParserATNSimulator.h"
#include "atn/PredictionMode.h"
#include <fstream>
#include <getopt.h>
#include <ios>
#include <iostream>
#include <memory>
#include <string>

using namespace nnvm;
using std::string;

static string sourceFile;
static string outputFile;

static string backendType = "riscv";

static bool dumpIR;
static bool dumpIRAfterOpt;
static bool dumpAssembly;
static int optimizationLevel;

void parseArgs(int argc, char **argv) {
  static struct option options[] = {
      {"dump-ir", no_argument, nullptr, 'i'},
      {"dump-opt-ir", no_argument, nullptr, 'I'},
      {"dump-asm", no_argument, nullptr, 'a'},
      {"O", required_argument, nullptr, 'O'},
      {"backend", required_argument, nullptr, 'b'},
      {nullptr, no_argument, nullptr, 'o'},
      {nullptr, no_argument, nullptr, '\0'}};
  int opt;
  while ((opt = getopt_long_only(argc, argv, "Sb:o:O:", options, nullptr)) !=
         -1) {
    switch (opt) {
    case 'i':
      dumpIR = true;
      break;
    case 'I':
      dumpIRAfterOpt = true;
      break;
    case 'a':
      dumpAssembly = true;
      break;
    case 'S':
      break;
    case 'O':
      optimizationLevel = std::stoi(optarg);
      break;
    case 'b':
      backendType = optarg;
      break;
    case 'o':
      outputFile = optarg;
      break;
    default:
      nnvm_unreachable("Not implemented")
    }
  }
  sourceFile = argv[optind];
}

int main(int argc, char **argv) {
  parseArgs(argc, argv);

  debug(std::cerr << "Reading source " << sourceFile << "\n");

  std::ifstream inputStream;
  Module ir;
  IRGenerator irgen;
  Optimizer optimizer;
  std::unique_ptr<Backend> backend;

  inputStream.open(sourceFile);
  antlr4::ANTLRInputStream input(inputStream);
  SysYLexer lexer(&input);
  antlr4::CommonTokenStream tokens(&lexer);
  SysYParser parser(&tokens);
  antlr4::tree::ParseTree *tree;

  try {
    parser.getInterpreter<antlr4::atn::ParserATNSimulator>()->setPredictionMode(
        antlr4::atn::PredictionMode::SLL);
    parser.setErrorHandler(
        Ref<antlr4::ANTLRErrorStrategy>(new antlr4::BailErrorStrategy()));
    tree = parser.program();
  } catch (const antlr4::ParseCancellationException &e) {
    parser.getInterpreter<antlr4::atn::ParserATNSimulator>()->setPredictionMode(
        antlr4::atn::PredictionMode::LL);
    parser.setErrorHandler(
        // TODO: use Default strategy
        Ref<antlr4::ANTLRErrorStrategy>(new antlr4::DefaultErrorStrategy()));
    tree = parser.program();
  }

  inputStream.close();
  debug(std::cerr << "Parsing done!"
                  << "\n");

  irgen.emitIR(tree, &ir);
  debug(std::cerr << "IRGen done!"
                  << "\n");
  if (dumpIR)
    std::cout << ir.dump() << "\n";

  if (optimizationLevel != 0) {
    optimizer.transform(&ir);
    debug(std::cerr << "Opt done!"
                    << "\n");

    if (dumpIRAfterOpt)
      std::cout << ir.dump() << "\n";
  }

  if (backendType == "riscv")
    backend = std::make_unique<riscv::RISCVBackend>();
  else if (backendType == "llvm")
    backend = std::make_unique<llvm::LLVMBackend>();
  else
    nnvm_unreachable("Not implemented yet");

  if (dumpAssembly)
    backend->emit(ir, std::cout);

  if (!outputFile.empty()) {
    std::ofstream outputStream;
    outputStream.open(outputFile);
    backend->emit(ir, outputStream);
    outputStream.close();
  }
}
