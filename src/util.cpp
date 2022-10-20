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

    for (int i = start_index; i < source.length(); i ++) {
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

