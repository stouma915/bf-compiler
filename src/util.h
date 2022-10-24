#pragma once

#include <iostream>
#include <tuple>

bool starts_with(std::string str, std::string prefix);
int search_loop_end(std::string source, int start_index);
int count_in(std::string str, char c);
std::tuple<int, int> search_line_index(std::string source, int index);

