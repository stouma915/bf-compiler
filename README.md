# bf-compiler
Compile Brainf**k to Assembly

## Compile
```bash
g++ src/*.cpp -o bf-compiler -std=c++17
```

## Usage
```bash
./bf-compiler source.bf > compiled.asm

nasm -f elf64 compiled.asm
ld -o compiled compiled.o
./compiled
```
