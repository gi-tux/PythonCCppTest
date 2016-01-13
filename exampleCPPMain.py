#!/usr/bin/python2.7

import exampleCPP
ex1 = exampleCPP.example1()
print ex1.getCounter()
ex1.incCounter();
print ex1.getCounter()
ex1.incCounter();
print ex1.getCounter()
ex1.decCounter();
print ex1.getCounter()
print "====="
ex2 = exampleCPP.example2()
print ex2.getCounter()
ex2.incCounter();
print ex2.getCounter()
ex2.incCounter();
print ex2.getCounter()
ex2.decCounter();
print ex2.getCounter()
