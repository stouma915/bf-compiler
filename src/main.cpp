#include <fstream>
#include <iostream>
#include <optional>
#include <sstream>

#include "normalcompiler.h"
#include "util.h"

#define VERSION "1.1.0"

void print_usage(std::string file_name) {
    std::cout << "bf-compiler v" << VERSION << "\n"
                 "\n"
                 "Usage:\n"
                 "   " << file_name << " [OPTIONS] [SOURCE]\n"
                 "\n"
                 "Options:\n"
                 "   -h, --help    print help information.\n"
                 "   -o, --out     specify output file.\n"
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

    optional<string> source_file_opt = nullopt;
    optional<string> output_file_opt = nullopt;

    bool continue_once = false;
    for (int i = 1; i < argc; i ++) {
        if (continue_once) {
            continue_once = false;

            continue;
        }

        string arg = argv[i];

        if (starts_with(arg, "-")) {
            if (arg == "-h" || arg == "--help") {
                print_usage(argv[0]);

                return 0;
            } else if (arg == "-o" || arg == "--out") {
                if (argc <= (i + 1)) {
                    cout << "Invalid usage.\n"
                            "\n"
                            "For more information try --help\n";

                    return 1;
                }

                output_file_opt = argv[i + 1];

                continue_once = true;
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
            source_file_opt = arg;
        }
    }

    if (source_file_opt == nullopt) {
        print_usage(argv[0]);

        return 1;
    }

    string source_file_name = source_file_opt.value();

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

    if (output_file_opt != nullopt) {
        string output_file_name = output_file_opt.value();

        ofstream output_file;
        output_file.open(output_file_name);
        if (output_file.fail()) {
            cout << "Failed to create '" << output_file_name << "'." << endl;

            return 1;
        }

        output_file << rs.output;

        output_file.close();
    } else {
        cout << rs.output;
    }
  
    return 0;
}
