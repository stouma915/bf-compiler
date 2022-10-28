#include "normalcompiler.h"

#include <optional>

Result NormalCompiler::compile_bf(std::string source) {
    appendln("section .text");
    appendln_indent("global _start");
    new_line();
    appendln("_start:");
    appendln_indent("mov edi, buffer");
    new_line();
    appendln_indent("jmp LB_0");
    new_line();
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

                new_line();
                append_indent("jmp LB_");
                appendln(std::to_string(label_num));
                new_line();

                append("LB_");
                append(std::to_string(label_num));
                appendln(":");
                appendln_indent("cmp byte [edi], 0");
                append_indent("je LB_");
                appendln(std::to_string(label_num + 1));
                new_line();

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

                new_line();
                append_indent("jmp LB_");
                appendln(std::to_string(label_num));

                label_num ++;

                new_line();
                append("LB_");
                append(std::to_string(label_num));
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

    new_line();
    append_indent("jmp LB_");
    appendln(std::to_string(label_num));
    new_line();

    append("LB_");
    append(std::to_string(label_num));
    appendln(":");
    appendln_indent("mov eax, 1");
    appendln_indent("mov ebx, 0");
    appendln_indent("int 0x80");
    new_line();
    appendln("section .bss");
    appendln_indent("buffer: resb 1000");
    new_line();

    return Result(output, std::nullopt);
}

