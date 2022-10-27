#pragma once

#include <iostream>

#include "bfcompiler.h"

class NormalCompiler : BfCompiler {
    public:
        int label_num;
        int loops;

        NormalCompiler() {
            label_num = 0;
            loops = 0;
        }

        Result compile_bf(std::string source) override;
};

