#pragma once

#include <iostream>

#include "compileropt.h"
#include "result.h"

#define INDENT "    "

class BfCompiler {
    public:
        std::string output;

        void append(std::string str);
        void appendln(std::string str);
        void append_indent(std::string str);
        void appendln_indent(std::string str);
        void new_line();

        virtual Result compile_bf(
	    std::string source,
	    CompilerOpt compiler_opt
	) = 0;
};
