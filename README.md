# dcraw-static
Static windows build of dcraw

Contains a makefile that builds dcraw, links it statically on msys2 using mingw32
and compresses it using upx.

Mingw64 currently appears broken as trying to static link the depenendencies fails
with missing symbols from the mingw64 crt.
