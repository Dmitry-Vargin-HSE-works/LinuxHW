#!bin/bash

clear
echo "Wow, you was able to run it!"

touch cpp1.cpp

echo "#include <iostream>" > cpp1.cpp
echo "#include <fstream>" >> cpp1.cpp
echo "using namespace std;" >> cpp1.cpp
echo "int main(){" >> cpp1.cpp
echo "ofstream outfile(\"bash2.sh\");" >> cpp1.cpp


echo "outfile << \"echo \\\"Bash2 was run!\\\"\n\";" >> cpp1.cpp
echo "outfile << \"touch cpp2.cpp\n\";" >> cpp1.cpp

echo "outfile << \"echo \\\"#include <iostream>\\\" > cpp2.cpp\n\";" >> cpp1.cpp

echo "outfile << \"echo \\\"int main(){std::cout << std::endl << \\\\\\\"Hello, world!\\\\\\\" << std::endl;return 0;}\\\" >> cpp2.cpp\n\";" >> cpp1.cpp

echo "outfile << \"g++ -o cpp2 cpp2.cpp\n\";" >> cpp1.cpp
echo "outfile << \"./cpp2\n\";" >> cpp1.cpp

echo "outfile.close();" >> cpp1.cpp
echo "cout <<\"CPP1 was run!\n\"; return 0;}" >> cpp1.cpp


g++ -o cpp1 cpp1.cpp
./cpp1

bash bash2.sh

#rm -rf cpp1
#rm -rf cpp2

#rm -rf cpp1.cpp
#rm -rf cpp2.cpp
#rm -rf bash2.sh