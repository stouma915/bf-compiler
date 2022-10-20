#include "compile.h"

#include "compiler.h"

Compiler compile_once(std::string source, Compiler compiler) {
        compiler.start_label();

        for (int i = 0; i < source.length(); i ++) {
                char c = source[i];

                if (c == '+') {
                        compiler.append_lb_line("inc byte [edi]");
                } else if (c == '-') {
                        compiler.append_lb_line("dec byte [edi]");
                } else if (c == '>') {
                        compiler.append_lb_line("inc edi");
                } else if (c == '<') {
                        compiler.append_lb_line("dec edi");
                } else if (c == '.') {
                        compiler.append_lb_line("mov eax, 4");
                        compiler.append_lb_line("mov ebx, 1");
                        compiler.append_lb_line("mov ecx, edi");
                        compiler.append_lb_line("mov edx, 1");
                        compiler.append_lb_line("int 0x80");
                }
        }

        compiler.end_label();

        return compiler;
}

Result compile_bf(std::string source) {
        Compiler compiler = Compiler();

        compiler.init();

        compiler = compile_once(source, compiler);

        compiler.finalize();

        return compiler.result();
}

