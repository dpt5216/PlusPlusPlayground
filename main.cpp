
#include <iostream>
#include <fstream>
#include <string>


using namespace std;

int main(int argc, char** argv){
    cout << "Hello world\n";

    ifstream dataIn ("data/datum1.txt"); // open file on initialization
    string dataString; // gonna have to extrac


    // *** read and print a file ***

    while (dataIn.good()){
        dataString = dataIn.get(); // pull out string without destroying whitespace
        cout << dataString;
    }
    dataIn.close();


    // *** increment a counter file ***

    dataIn.open("data/datum2.txt");
    dataIn >> dataString;
    dataIn.close();

    int runCount = stoi(dataString);
    runCount ++;

    ofstream dataOut ("data/datum2.txt");
    dataOut << runCount;

}
