#include <iostream>
#include <fstream>
using namespace std;
int main(){
ofstream outfile("bash2.sh");
outfile << "echo \"Bash2 was run!\"\n";
outfile << "touch cpp2.cpp\n";
outfile << "echo \"#include <iostream>\" > cpp2.cpp\n";
outfile << "echo \"int main(){std::cout << std::endl << \\\"Hello, world!\\\" << std::endl;return 0;}\" >> cpp2.cpp\n";
outfile << "g++ -o cpp2 cpp2.cpp\n";
outfile << "./cpp2\n";
outfile.close();
cout <<"First cpp was run!\n"; return 0;}
