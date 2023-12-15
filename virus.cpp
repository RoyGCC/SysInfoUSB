#include <iostream>

int main(void){
   system("start powershell.exe Set-ExecutionPolicy RemoteSigned \n");
   system("start powershell.exe \\script.ps1");
}