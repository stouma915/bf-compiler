#pragma once

#include <iostream>
#include <optional>

#include "assemblybuilder.h"
#include "error.h"
#include "result.h"

#define INDENT "      "

class Compiler {
    public:
        int label_num;
        AssemblyBuilder asmb;
        std::optional<Error> error;

        Compiler() {
            label_num = 0;
            asmb = AssemblyBuilder();
            error = {};
        }

        Compiler(
            int _label_num,
            AssemblyBuilder _asmb,
            std::optional<Error> _error
        ) {
            label_num = _label_num;
            asmb = _asmb;
            error = _error;
        }

        void append(std::string str) {
            asmb.append(str);
        }

        void append_line(std::string str) {
            asmb.append_line(str);
        }

        void append_lb(std::string str) {
            append(INDENT + str);
        }

        void append_lb_line(std::string str) {
            append_line(INDENT + str);
        }

        void init() {
            append_line("section .text");
            append_lb_line("global _start");
            append_line("");
            append_line("_start:");
            append_lb_line("mov edi, buffer");
            append_line("");
            append_lb_line("jmp LB_0");
            append_line("");
        }

        void start_label(bool loop) {
            append("LB_");
            append(std::to_string(label_num));
            append_line(":");

            if (loop) {
                append_lb_line("cmp byte [edi], 0");
                append_lb("je LB_");
                append_line(std::to_string(label_num + 1));
                append_line("");
            }

            label_num ++;
        }

        void end_label(bool loop) {
            append_line("");
            append_lb("jmp LB_");

            if (loop) {
                append_line(std::to_string(label_num - 1));
            } else {
                append_line(std::to_string(label_num));
            
            }
            append_line("");
        }

        void finalize() {
            start_label(false);

            append_lb_line("mov eax, 1");
            append_lb_line("mov ebx, 0");
            append_lb_line("int 0x80");

            append_line("");
            append_line("section .bss");
            append_lb_line("buffer: resb 1000");
        }

        bool has_error() {
            return error != std::nullopt;
        }

        Result result() {
            return Result(asmb.as_str(), error);
        }
};

