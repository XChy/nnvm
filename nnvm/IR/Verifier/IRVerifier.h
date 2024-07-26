// IRVerifier: to verifiy the well-defined form of NNVM-IR

#include "Analysis/DomTreeAnalysis.h"
#include "IR/Module.h"
#include <algorithm>
namespace nnvm {

class IRVerifier {
public:
  void run(Module &M);
  void verify(Function &F);
  void verify(BasicBlock *BB);
  void verify(Instruction *I);

protected:
  std::unique_ptr<DomTreeAnalysis> domTree;
};
} /* namespace nnvm */
