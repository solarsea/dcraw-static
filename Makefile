SRC=dcraw.c
BIN=dcraw.exe

${BIN}: ${SRC}
	gcc -static -Wl,-Bstatic -s -Os ${SRC} -o $@ -DJAS_DLL=0 -I/mingw32/include -L/mingw32/lib -ljpeg -llcms2 -ljasper -lws2_32 -l:libjpeg.a
	upx -9 $@

clean:
	rm -rf ${BIN}
