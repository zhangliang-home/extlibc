/*
 *  extlibc_test.c
 *
 *  date:   Apr 23, 2015
 *  author: b42965
 */

#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>

#include "hello_world.h"

int32_t main()
{
    printf("This is the main test frame for the extlibc.\n");
    hello_world();
    return EXIT_SUCCESS;
}
