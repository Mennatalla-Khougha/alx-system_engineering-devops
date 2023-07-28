#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

/**
 * infinite_while - an infinite while loop.
 * Return: 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - create 5 zombie process
 * Return: 0
*/

int main (void)
{
    pid_t pid;
    int i = 0;

    while (i < 5)
    {
        pid = fork();
        if (pid > 0)
        {
            printf("Zombie process created, PID: %d\n", pid);
            i++;
        }
        else 
            exit(0);
    }

    infinite_while();

    return (0);
}