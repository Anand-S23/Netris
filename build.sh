set -xe

mkdir -p bin
cd bin

CC=gcc
CFLAGS="-Wall -Wextra -Wno-address -Wno-implicit-function-declaration -std=c11 -std=gnu11 -ggdb"
LIBS="-lGL -lSDL2 -lm -ldl -I../third_party"

$CC $CFLAGS ../src/netris.c $LIBS -o netris

cd ..
