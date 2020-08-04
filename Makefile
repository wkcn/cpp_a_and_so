build_with_a:
	g++ test.cpp hello.a -o test
	./test
build_with_so:
	g++ test.cpp hello.so -o test
	./test
a:
	# static library, *.a
	g++ -c hello.cpp -o hello.o
	ar rc hello.a hello.o
so:
	g++ -fPIC -shared hello.cpp -o hello.so
nm:
	nm -D hello.so
ldd:
	ldd -r hello.so
readelf:
	readelf -d test
