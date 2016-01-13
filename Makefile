all:	exampleC.py _exampleC.so exampleCPP.py _exampleCPP.so

clean:
	rm -f _exampleC.so
	rm -f example.o
	rm -f exampleC_wrap.o
	rm -f exampleC_wrap.c
	rm -f exampleC.py
	#rm -f exampleC.pyc
	rm -f _exampleCPP.so
	rm -f example1.o
	rm -f exampleCPP_wrap.o
	rm -f exampleCPP_wrap.cpp
	rm -f exampleCPP.py
	#rm -f exampleCPP.pyc
	rm -f example2.o
	#rm -f fibo.pyc
	#rm -f world.pyc

exampleC.py: exampleC.i
	swig -python exampleC.i

example.o: example.c
	gcc -fPIC -c example.c exampleC_wrap.c -I/usr/include/python2.7

exampleC_wrap.o: exampleC_wrap.c
	gcc -fPIC -c example.c exampleC_wrap.c -I/usr/include/python2.7

_exampleC.so: example.o exampleC_wrap.o
	ld -shared example.o exampleC_wrap.o -o _exampleC.so

exampleCPP.py: exampleCPP.i
	swig -Wall -c++ -v -python -o exampleCPP_wrap.cpp exampleCPP.i

example1.o: example1.cpp
	g++ -fPIC -c example1.cpp exampleCPP_wrap.cpp -I/usr/include/python2.7

example2.o: example2.cpp
	g++ -fPIC -c example2.cpp exampleCPP_wrap.cpp -I/usr/include/python2.7

exampleCPP_wrap.o: exampleCPP_wrap.cpp
	g++ -fPIC -c example1.cpp example2.cpp exampleCPP_wrap.cpp -I/usr/include/python2.7

_exampleCPP.so: example1.o example2.o exampleCPP_wrap.o
	g++ -shared exampleCPP_wrap.o example1.o example2.o -o _exampleCPP.so
