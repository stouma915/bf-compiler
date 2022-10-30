# bf-compiler
Compile Brainf**k to Assembly

## Compile
```bash
g++ -std=c++17 -o bf-compiler src/*.cpp
```

## Usage
```bash
# compile Brainf**k
./bf-compiler source.bf > compiled.asm

# compile and run assembly
nasm -f elf64 compiled.asm
ld -o compiled compiled.o
./compiled
```
