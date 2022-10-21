#pragma once

#include <iostream>

class Error {
    public:
        int line;
        int index;
        std::string kind;
        std::string message;

        Error(
            int _line,
            int _index,
            std::string _kind,
            std::string _message
        ) {
            line = _line;
            index = _index;
            kind = _kind;
            message = _message;
        }
};

