#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
    if(argc < 2)
    {
        fprintf(stderr, "Usage: <program> statusCode");
    }

    const int n = 22;
    const int offset = 128;

    int statusCodeValues[n];

    for (int i = 0; i < n; i++)
    {
        statusCodeValues[i] = offset + i + 1;
    }

    char *statusCodeNames[] =
    {
        "HUP", // 129
        "INT", // 130
        "QUIT", // ...
        "ILL",
        "TRAP",
        "IOT",
        "BUS",
        "FPE",
        "KILL",
        "USR1",
        "SEGV",
        "USR2",
        "PIPE",
        "ALRM",
        "TERM",
        "STKFLT",
        "CHLD",
        "CONT",
        "STOP",
        "TSTP",
        "TTIN",
        "TTOU"
    };

    int statusCode = atoi(argv[1]);

    if(statusCode <= 128)
    {
        fprintf(stdout, "%i", statusCode);
    }
    else
    {
        fprintf(stdout, "SIG%s", statusCodeNames[statusCode - 129]);
    }

    return 0;
}