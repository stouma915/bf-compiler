#include "compiler.h"

#include "assemblybuilder.h"

Result compile_bf(std::string source) {
	using namespace std;

	int label_num = 0;
	bool error = false;

	AssemblyBuilder asmb = AssemblyBuilder();

	asmb.append_line("section .text");
	asmb.append_line("	global _start");
	asmb.append_line("");
	asmb.append_line("_start:");
	asmb.append_line("	mov edi, buffer");
	asmb.append_line("");

	for (int i = 0; i < source.length(); i ++) {
		char c = source[i];

		if (c == '+') {
			asmb.append_line("	inc byte [edi]");
		} else if (c == '-') {
			asmb.append_line("	dec byte [edi]");
		} else if (c == '>') {
			asmb.append_line("	inc edi");
		} else if (c == '<') {
			asmb.append_line("	dec edi");
		} else if (c == '.') {
			asmb.append_line("	mov eax, 4");
			asmb.append_line("	mov ebx, 1");
			asmb.append_line("	mov ecx, edi");
			asmb.append_line("	mov edx, 1");
			asmb.append_line("	int 0x80");
		}
	}

	asmb.append_line("");
	asmb.append_line("	jmp LB_0");

	asmb.append_line("");
	asmb.append("LB_");
	asmb.append(to_string(label_num));
	asmb.append_line(":");
	asmb.append_line("	mov eax, 1");
	asmb.append_line("	mov ebx, 0");
	asmb.append_line("	int 0x80");

	asmb.append_line("");
	asmb.append_line("section .bss");
	asmb.append_line("	buffer: resb 1000");

	return Result(asmb.as_str(), error);
}

int search_loop_end(std::string source, int start_index) {
	if (source[start_index] != '[') {
		return -1;
	}

	int result = -1;

	int a = 0;
	int b = 0;

	for (int i = start_index; i < source.length(); i ++) {
		char c = source[i];

		if (c == '[') {
			a ++;
		} else if (c == ']') {
			b ++;
		}

		if (a == b) {
			result = i;
			break;
		}
	}

	return result;
}

