#include "compile.h"

#include "compiler.h"
#include "util.h"

Compiler compile_once(std::string source, Compiler compiler, bool loop) {
        compiler.start_label(loop);

        int finalize = true;

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
                } else if (c == '[') {
                        int loop_end = search_loop_end(source, i);
                        if (loop_end == -1) {
                                compiler.has_error = true;
                                break;
                        }

                        finalize = false;

                        compiler.end_label(loop);

                        std::string loop_code = source.substr(i + 1, loop_end - (i + 1));
                        std::string after_loop = source.substr(loop_end + 1, source.length());

                        compiler = compile_once(loop_code, compiler, true);
                        compiler = compile_once(after_loop, compiler, false);

                        break;

                }
        }

        if (finalize) {
                compiler.end_label(loop);
        }

        return compiler;
}

Result compile_bf(std::string source) {
        Compiler compiler = Compiler();

        compiler.init();

        compiler = compile_once(source, compiler, false);

        compiler.finalize();

        return compiler.result();
}

