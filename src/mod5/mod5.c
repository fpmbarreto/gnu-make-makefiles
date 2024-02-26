#include <stdio.h> 
#include "mod2.h"
#include "mod4.h"

int main()
{
    printf("Calling Module 2 function\n");
    func_mod2();

    printf("Calling Module 4 function\n");
    func_mod4();
}
