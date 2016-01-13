/* File : exampleCPP.i */
%module exampleCPP
%{
	#include "example1.h"
	#include "example2.h"
%}

%include "example1.h"
%include "example2.h"