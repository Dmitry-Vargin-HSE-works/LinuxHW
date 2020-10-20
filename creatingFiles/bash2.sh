echo "Bash2 was run!"
touch cpp2.cpp
echo "#include <iostream>" > cpp2.cpp
echo "int main(){std::cout << std::endl << \"Hello, world!\" << std::endl;return 0;}" >> cpp2.cpp
g++ -o cpp2 cpp2.cpp
./cpp2
