#include "compile.h"

#include "compiler.h"
#include "util.h"

Compiler compile_tailrec(std::string source, Compiler compiler, bool loop) {
    compiler.start_label(loop);

    for (unsigned int i = 0; i < source.length(); i ++) {
        switch (source[i]) {
            case '+':
                compiler.append_lb_line("inc byte [edi]");

                break;
            case '-':
                compiler.append_lb_line("dec byte [edi]");

                break;
            case '>':
                compiler.append_lb_line("inc edi");

                break;
            case '<':
                compiler.append_lb_line("dec edi");

                break;
            case '.':
                compiler.append_lb_line("mov eax, 4");
                compiler.append_lb_line("mov ebx, 1");
                compiler.append_lb_line("mov ecx, edi");
                compiler.append_lb_line("mov edx, 1");
                compiler.append_lb_line("int 0x80");

                break;
            case '[':
                int loop_end = search_loop_end(source, i);
                if (loop_end == -1) {
                    compiler.has_error = true;

                    return compiler;
                }

                compiler.end_label(loop);

                std::string loop_code = source.substr(i + 1, loop_end - (i + 1));
                std::string after_loop = source.substr(loop_end + 1, source.length());

                compiler = compile_tailrec(loop_code, compiler, true);
                compiler = compile_tailrec(after_loop, compiler, false);

                return compiler;
        }
    }
    
    compiler.end_label(loop);

    return compiler;
}

Result compile_bf(std::string source) {
    Compiler compiler = Compiler();

    compiler.init();

    compiler = compile_tailrec(source, compiler, false);

    compiler.finalize();

    return compiler.result();
}

