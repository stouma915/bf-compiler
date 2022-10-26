#pragma once

#include <iostream>

#include "error.h"
#include "result.h"

#define INDENT "    "

class BfCompiler {
    public:
        std::string output;

        void append(std::string str);
        void appendln(std::string str);
        void appendln();
        void append_indent(std::string str);
        void appendln_indent(std::string str);

        virtual Result compile_bf(std::string source) = 0;
};

