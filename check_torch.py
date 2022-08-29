import torch
print(f"torch.cuda.get_arch_list() {torch.cuda.get_arch_list()}")
print(f"torch.version.cuda {torch.version.cuda}")
print(f"torch.__version__ {torch.__version__}")
import sys
import os
print(sys.path)