#include <stdio.h>
#include <string>
#include <iostream>

extern "C"{
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}

#include "Animal.h"

using namespace std;


int main()
{
	lua_State      *L = luaL_newstate();
    luaL_openlibs(L);

    tolua_toluaTest_open (L);
//
	if (luaL_loadfile(L, "test.lua") || lua_pcall(L, 0, 0, 0)){
        cout << "cannot run config. file:" << lua_tostring(L,-1) << endl;
    }

  lua_close(L);
  return 0;

}



