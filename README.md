# bf-compiler
Compile Brainf**k to Assembly

## Usage
```bash
# compile bf-compiler
g++ -std=c++17 -o bf-compiler src/*.cpp

# compile Brainf**k
./bf-compiler source.bf > compiled.asm

# compile and run assembly
nasm -f elf64 compiled.asm
ld -o compiled compiled.o
./compiled
```
