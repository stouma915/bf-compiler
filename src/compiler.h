#pragma once

#include <iostream>

#include "result.h"

Result compile_bf(std::string source);
int search_loop_end(std::string source, int start_index);

