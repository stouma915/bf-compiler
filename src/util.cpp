#include "util.h"

bool starts_with(std::string str, std::string prefix) {
    return str.rfind(prefix, 0) == 0;
}

int search_loop_end(std::string source, int start_index) {
    if (source[start_index] != '[') {
        return -1;
    }

    int result = -1;

    int a = 0;
    int b = 0;

    for (unsigned int i = start_index; i < source.length(); i ++) {
        char c = source[i];

        if (c == '[') {
            a ++;        
        } else if (c == ']') {
            b ++;
        }

        if (a == b) {
            result = i;
            break;
        }
    } 

    return result;
}

int count_in(std::string str, char c) {
    int count = 0;

    for (unsigned int i = 0; i < str.length(); i ++) {
        if (str[i] == c) {
            count ++;
        }
    }

    return count;
}

std::tuple<int, int> search_line_index(std::string source, int index) {
    int line = count_in(source.substr(0, index + 1), '\n');

    int ind = 0;

    int i = 0;
    while (i != index) {
        switch (source[i]) {
            case '\n':
                ind = 0;
                break;
            default:
                ind ++;
        }

        i ++;
    }

    return std::make_tuple(line, ind);
}

