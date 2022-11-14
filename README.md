# bf-compiler
Compile Brainf**k to Assembly

## Compile
```bash
g++ src/*.cpp -o bf-compiler -std=c++17
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
