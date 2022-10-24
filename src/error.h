#pragma once

#include <iostream>

class Error {
    public:
        std::string kind;
        std::string message;

        Error(
            std::string _kind,
            std::string _message
        ) {
            kind = _kind;
            message = _message;
        }
};

