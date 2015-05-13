/*
 *  extlibc_list.c
 *
 *  Date:   May 8, 2015
 *  Author: B42965
 */

#include "../include/extlibc_common.h"
#include "../include/extlibc_list.h"

typedef struct __extlibc_list_node_s
{
    void* p_elem;
    struct __extlibc_list_node_s* p_next;
} __extlibc_list_node_t;

typedef struct __extlibc_list_s
{
    uint32_t elem_cnt;
    __extlibc_list_node_t* p_list;
} __extlibc_list_t;

void extlibc_list_init(extlibc_list_ptr_t plist)
{
    if(NULL == plist)
    {
        return;
    }

    plist->elem_cnt = 0;
    plist->p_list = NULL;
}
