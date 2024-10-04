// // The function findSpecialChar scans the string "char@cteristics!" to find the first character that appears exactly once. It uses an unordered map to count the frequency of each character. After counting, it goes through the string again to identify the first character with a count of 1.

// In this case, the first unique character in the string is 'h', which is returned as the answer.

#include <iostream>
#include <unordered_map>
#include <string> 
using namespace std;

char findSpecialChar (const string& str) {
    unordered_map<char, int> charCount;
    for (char ch: str) {
        charCount[ch]++;
        }
        for (char ch: str) {
            if (charCount[ch] == 1) {
                return ch;
                }
                }
                return '-';
}

int main(){
    string str = "char@cteristics!";
    cout << findSpecialChar(str) << endl;
    return 0;
}