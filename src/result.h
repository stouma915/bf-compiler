#pragma once

#include <iostream>
#include <optional>

#include "error.h"

class Result {
    public:
        std::string output;
        std::optional<Error> error;

        Result(std::string _output, std::optional<Error> _error) {
            output = _output;
            error = _error;
        }

        bool has_error();
};
