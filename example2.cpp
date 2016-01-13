/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * example2.cpp
 * Copyright (C) 2016 Kelly Fulks <gitux1@gmail.com>
 *
 * PythonCCppTest is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * PythonCCppTest is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License along
 * with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "example2.h"

example2::example2()
{
	counter = 0;
}

example2::~example2()
{
	counter = 0;
}

int example2::getCounter()
{
	return counter;
}

void example2::resetCounter()
{
	counter = 0;
}

void example2::incCounter()
{
	counter += 1;
}

void example2::decCounter()
{
	counter -= 1;
}



