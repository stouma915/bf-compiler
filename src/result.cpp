#include "result.h"

bool Result::has_error() {
    return error != std::nullopt;
}

