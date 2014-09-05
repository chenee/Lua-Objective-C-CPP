#ifndef __TOLUATEST_MAIN_H_
#define __TOLUATEST_MAIN_H_

#include <stdio.h>
#include <string>
#include <iostream>


extern "C"{
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}


#ifdef __cplusplus
extern "C" {
#endif

#include "tolua++.h"

#ifdef __cplusplus
}
#endif

TOLUA_API int  tolua_toluaTest_open (lua_State* tolua_S);


using namespace std;

//
//@chenee: the class to be deal with;
//
class Animal{
public:
    Animal(std::string name):age(0){ this->name = name;};
    void setAge(int age) { this->age = age;};
    int getAge(){ return this->age;};
    void sound(){ cout << " -- Animal name:   " << this->name << "  and it's Age:"<< this->age << endl;};
private:
    string name;
    int age;
};

#endif
