#include "compileropt.h"

void CompilerOpt::add_int(std::string key, int opt) {
    int_opts[key] = opt;
}

void CompilerOpt::add_str(std::string key, std::string opt) {
    str_opts[key] = opt;
}

void CompilerOpt::add_bool(std::string key, bool opt) {
    bool_opts[key] = opt;
}

bool CompilerOpt::has_int(std::string key) {
    return int_opts.find(key) != int_opts.end();
}

bool CompilerOpt::has_str(std::string key) {
    return str_opts.find(key) != str_opts.end();
}

bool CompilerOpt::has_bool(std::string key) {
    return bool_opts.find(key) != bool_opts.end();
}

int CompilerOpt::get_int(std::string key) {
    return int_opts[key];
}

std::string CompilerOpt::get_str(std::string key) {
    return str_opts[key];
}

bool CompilerOpt::get_bool(std::string key) {
    return bool_opts[key];
}
