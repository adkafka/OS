#!/bin/bash

# Homebrew taps from https://github.com/sevki/homebrew-gcc_cross_compilers

echo "Installing binutils"
# Note that this may throw an error about linking
brew install https://raw.githubusercontent.com/sevki/homebrew-gcc_cross_compilers/master/x86_64-elf-binutils.rb

echo "Installing gcc"
brew install https://raw.githubusercontent.com/sevki/homebrew-gcc_cross_compilers/master/x86_64-elf-gcc.rb

echo "Installing gdb"
# Omitted for now
# brew install https://github.com/sevki/homebrew-gcc_cross_compilers/blob/master/x86_64-elf-gdb.rb
