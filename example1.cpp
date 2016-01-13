#include "example1.h"

namespace gitux {
	example1::example1() {
		counter = 0;
	}

	example1::~example1() {
		counter = 0;
	}

	int example1::getCounter() {
		return (counter);
	}

	void example1::resetCounter() {
		counter = 0;
	}

	void example1::incCounter() {
		counter += 1;
	}

	void example1::decCounter() {
		counter -= 1;
	}

}
