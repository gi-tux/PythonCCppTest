all:	example.py _example.so example1.py _example1.so

clean:
	rm -f _example.so
	rm -f example.o
	rm -f example_wrap.o
	rm -f example_wrap.c
	rm -f example.py
	rm -f example.pyc
	rm -f _example1.so
	rm -f example1.o
	rm -f example1_wrap.o
	rm -f example1_wrap.cpp
	rm -f example1.py
	rm -f example1.pyc

example.py: example.i
	swig -python example.i

example.o: example.c
	gcc -fPIC -c example.c example_wrap.c -I/usr/include/python2.7

example_wrap.o: example_wrap.c
	gcc -fPIC -c example.c example_wrap.c -I/usr/include/python2.7

_example.so: example.o example_wrap.o
	ld -shared example.o example_wrap.o -o _example.so

example1.py: example1.i
	swig -Wall -c++ -v -python -o example1_wrap.cpp example1.i

example1.o: example1.cpp
	g++ -fPIC -c example1.cpp example1_wrap.cpp -I/usr/include/python2.7

example1_wrap.o: example1_wrap.cpp
	g++ -fPIC -c example1.cpp example1_wrap.cpp -I/usr/include/python2.7

_example1.so: example1.o example1_wrap.o
	g++ -shared example1_wrap.o example1.o -o _example1.so
