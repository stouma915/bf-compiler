#pragma once

#include <iostream>

#include "bfcompiler.h"
#include "error.h"

class NormalCompiler : BfCompiler {
    public:
        int label_num;
        bool looping;

        NormalCompiler() {
            label_num = 0;
            looping = false;
        }

        Result compile_bf(std::string source) override;
};

