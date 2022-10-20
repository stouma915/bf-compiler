section .text
      global _start

_start:
      mov edi, buffer

      jmp LB_0

LB_0:
      dec byte [edi]
      dec byte [edi]
      dec byte [edi]
      dec byte [edi]

      jmp LB_1

LB_1:
      cmp byte [edi], 0
      je LB_2

      dec byte [edi]
      dec byte [edi]
      dec byte [edi]
      dec byte [edi]
      inc edi
      inc byte [edi]
      dec edi

      jmp LB_1

LB_2:
      inc edi
      inc byte [edi]
      inc byte [edi]
      mov eax, 4
      mov ebx, 1
      mov ecx, edi
      mov edx, 1
      int 0x80
      inc byte [edi]
      mov eax, 4
      mov ebx, 1
      mov ecx, edi
      mov edx, 1
      int 0x80
      inc byte [edi]
      mov eax, 4
      mov ebx, 1
      mov ecx, edi
      mov edx, 1
      int 0x80
      inc byte [edi]
      mov eax, 4
      mov ebx, 1
      mov ecx, edi
      mov edx, 1
      int 0x80

      jmp LB_3

LB_3:
      mov eax, 1
      mov ebx, 0
      int 0x80

section .bss
      buffer: resb 1000

