#include <fstream>
#include <iostream>
#include <sstream>

#include "normalcompiler.h"
#include "util.h"

#define VERSION "1.1.0"

void print_usage(std::string file_name) {
    std::cout << "bf-compiler v" << VERSION << "\n"
                 "\n"
                 "Usage:\n"
                 "   " << file_name << " [FLAGS] [SOURCE]\n"
                 "\n"
                 "Flags:\n"
                 "   -h, --help    prints help information.\n"
                 "\n"
                 "Args:\n"
                 "   <SOURCE>      Brainf**k source file.\n";
}

int main(int argc, char* argv[]) {
    using namespace std;

    if (argc < 2) {
        print_usage(argv[0]);

        return 1;
    }

    string source_file_name;
    for (int i = 1; i < argc; i ++) {
        string arg = argv[i];

        if (starts_with(arg, "-")) {
            if (arg == "-h") {
                print_usage(argv[0]);

                return 0;
            } else if (arg == "--help") {
                print_usage(argv[0]);

                return 0;
            } else {
                cout << "Found argument '" << arg << "' which wasn't expected, or isn't valid in this context.\n"
                        "\n"
                        "Usage:\n"
                        "   " << argv[0] << " [FLAGS] [SOURCE]\n"
                        "\n"
                        "For more information try --help\n";
                
                return 1;
            }
        } else {
            source_file_name = arg;
        }
    }

    ifstream source_file;
    source_file.open(source_file_name, ios::in);
    if (source_file.fail()) {
        cout << "failed to open '" << source_file_name << "'." << endl;
		
        return 1;
    }

    stringstream source_stream;
    source_stream << source_file.rdbuf();
    source_file.close();

    string source = source_stream.str();

    Result rs = NormalCompiler().compile_bf(source);
    if (rs.has_error()) {
        cout << rs.error.value().to_string() << endl;
        
        return 1;
    }

    cout << rs.output;
  
    return 0;
}

