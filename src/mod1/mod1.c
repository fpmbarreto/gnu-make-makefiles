#include <stdio.h>
#include <math.h>

int main (void)
{
    int n;
    printf("Insert number: ");
    scanf("%d", &n);
    printf("The square root of %d is %.4f\n", n, sqrt(n));

    return 0;
}