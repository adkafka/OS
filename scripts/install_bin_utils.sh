#/bin/bash

BIN_UTILS_DIR="../binutils-2.27.90/"
INSTALL_PATH="${HOME}/bin/cross" 
FILE_SYSTEM="../file_system/"
LIB_PATH="${HOME}/bin/cross/lib"


cd ${BIN_UTILS_DIR}
./configure --target=x86_64-elf     \
    --prefix=${INSTALL_PATH}        \
    --with-sysroot=${FILE_SYSTEM}   \
    --with-lib-path=${LIB_PATH}     \
    --disable-nls                   \
    --disable-werror

make
make install
