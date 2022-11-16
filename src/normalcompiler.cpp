#include "normalcompiler.h"

#include <optional>

Result NormalCompiler::compile_bf(
    std::string source,
    CompilerOpt compiler_opt
) {
    using namespace std;

    bool min = false;
    if (compiler_opt.has_bool("minimal")) {
	min = compiler_opt.get_bool("minimal");
    }

    appendln("section .text");
    appendln_indent("global _start");
    if (!min) new_line();
    appendln("_start:");
    appendln_indent("mov edi, buffer");
    if (!min) new_line();
    appendln_indent("jmp LB_0");
    if (!min) new_line();
    appendln("LB_0:");

    for (unsigned int i = 0; i < source.length(); i ++) {
        switch (source[i]) {
            case '+':
                appendln_indent("inc byte [edi]");

                break;
            case '-':
                appendln_indent("dec byte [edi]");

                break;
            case '>':
                appendln_indent("inc edi");

                break;
            case '<':
                appendln_indent("dec edi");

                break;
            case '.':
                appendln_indent("mov eax, 4");
                appendln_indent("mov ebx, 1");
                appendln_indent("mov ecx, edi");
                appendln_indent("mov edx, 1");
                appendln_indent("int 0x80");

                break;
            case '[':
                if (looping) {
                    Error err = Error(
                        "Syntax Error",
                        "Unexpected '['."
                    );

                    return Result("", err);
                }

                label_num ++;

                if (!min) new_line();
                append_indent("jmp LB_");
                appendln(to_string(label_num));
                if (!min) new_line();

                append("LB_");
                append(to_string(label_num));
                appendln(":");
                appendln_indent("cmp byte [edi], 0");
                append_indent("je LB_");
                appendln(to_string(label_num + 1));
                if (!min) new_line();

                looping = true;

                break;
            case ']':
                if (!looping) {
                    Error err = Error(
                        "Syntax Error",
                        "Unexpected ']'."
                    );

                    return Result("", err);
                }

                if (!min) new_line();
                append_indent("jmp LB_");
                appendln(to_string(label_num));

                label_num ++;

                if (!min) new_line();
                append("LB_");
                append(to_string(label_num));
                appendln(":");

                looping = false;

                break;
        }
    }

    if (looping) {
        Error err = Error(
            "Syntax Error",
            "']' wasn't found."
        );

        return Result("", err);
    }

    label_num ++;

    if (!min) new_line();
    append_indent("jmp LB_");
    appendln(to_string(label_num));
    if (!min) new_line();

    append("LB_");
    append(to_string(label_num));
    appendln(":");
    appendln_indent("mov eax, 1");
    appendln_indent("mov ebx, 0");
    appendln_indent("int 0x80");
    if (!min) new_line();
    appendln("section .bss");
    appendln_indent("buffer: resb 1000");
    if (!min) new_line();

    return Result(output, nullopt);
}
