#pragma once

#include <iostream>

#include "compileropt.h"
#include "bfcompiler.h"

class NormalCompiler : BfCompiler {
    public:
        int label_num;
        bool looping;

        NormalCompiler() {
            label_num = 0;
            looping = false;
        }

        Result compile_bf(
	    std::string source,
	    CompilerOpt compiler_opt
	) override;
};
