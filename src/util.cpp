#include "util.h"

bool starts_with(std::string str, std::string prefix) {
    return str.rfind(prefix, 0) == 0;
}
