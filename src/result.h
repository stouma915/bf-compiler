#pragma once

#include <iostream>

class Result {
        public:
		        std::string output;
		        bool has_error;

		        Result(std::string _output, bool _has_error) {
			            output = _output;
			            has_error = _has_error;
		        }
};

