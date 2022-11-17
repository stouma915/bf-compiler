#pragma once

#include <iostream>
#include <map>

class CompilerOpt {
    public:
	std::map<std::string, int> int_opts;
	std::map<std::string, std::string> str_opts;
	std::map<std::string, bool> bool_opts;

	CompilerOpt() {
	}

	void add_int(std::string key, int opt);
	void add_str(std::string key, std::string opt);
	void add_bool(std::string key, bool opt);

	bool has_int(std::string key);
	bool has_str(std::string key);
	bool has_bool(std::string key);

	int get_int(std::string key);
	std::string get_str(std::string key);
	bool get_bool(std::string key);
};
