#include<iostream>
using namespace std;

int main(){
    int x= 5;
    int y= 10;
    int result= ++x + y++ - --y + x++ + y;

    cout<<"Result: "<< result<<endl;
    cout<<"x: "<< x <<", y: "<< y << endl;

    return 0;
}