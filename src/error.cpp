#include "error.h"

std::string Error::to_string() {
    return kind + ": " + message;
}

