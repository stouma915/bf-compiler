#pragma once

#include <iostream>

class AssemblyBuilder {
	public:
		std::string content;

		AssemblyBuilder() {
			content = "";
		}

		AssemblyBuilder(std::string _content) {
			content = _content;
		}

		void append(std::string str) {
			content += str;
		}

		void append_line(std::string str) {
			content += str + "\n";
		}

		std::string as_str() {
			return content;
		}
};

