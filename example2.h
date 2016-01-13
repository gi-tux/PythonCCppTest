/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * example2.h
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

#ifndef _EXAMPLE2_H_
#define _EXAMPLE2_H_

class example2
{
public:
	example2();
	virtual ~example2();
	 
	int getCounter();
	void resetCounter();
	void incCounter();
	void decCounter();

protected:

private:
	int counter;
};

#endif // _EXAMPLE2_H_

