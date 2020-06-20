#include <stdio.h>
#include <string.h>

#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

lua_State* L = NULL;

int say(lua_State* L) {
    const char *name = luaL_checkstring (L, 1);

    printf("\r\ninto C library ...\r\n");
    printf("Welcome %s, I'm C.\r\n", name);
    printf("leaving C library ...\r\n");

    return 0;
}

static luaL_Reg mylibs[] = {
    {"say", say},
    {NULL, NULL}
};

/* luaopen_xxx, xxx需要和生成的库名保持一致 */
int luaopen_cprint(lua_State* L)
{
    luaL_newlib(L, mylibs);

    return 1;   //必须返回true
}
