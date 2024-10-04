//Comand Which You Use :
/*

'Orderby' sort the result an accessing or dessending order.



*/
#include <iostream>

#include <unordered_map>

#include <string>

using namespace std;

char findSpecial Char (const string& str) {

unordered_map<char, int charCount;

for (char ch: str) {

charCount [ch]++;

}

for

(char ch: str) {

if (charCount[ch] = 1) {

return ch;

}

}

}

return

int main() {

string str "char@cteristics!";

cout << "The special character is: <<<< findSpecialChar(str) <<<< endl;

return 0;

}