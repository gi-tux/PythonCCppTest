#!/usr/bin/python2.7

try:
	import exampleC
	print exampleC.fact(5)
	print exampleC.my_mod(7, 3)
	print exampleC.my_mod(7, 2)
	print exampleC.get_time()
except :
	print "Module exampleC is not usable"

import fibo
fibo.fib(1000)
print fibo.fib2(100)
print fibo.__name__
print ""

import world
myWorld = world.World()
print myWorld.i
print myWorld.f()
print ""

