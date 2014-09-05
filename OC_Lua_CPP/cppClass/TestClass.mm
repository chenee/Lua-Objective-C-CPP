//
//  Person.m
//  Lua on iOS
//

#import "TestClass.h"
#include "Animal.h"

@interface TestClass ()
@end

@implementation TestClass
{
    Animal *anim;
}

-(void)initAnimal{
    anim = new Animal("Dog");
    anim->sound();
    anim->callObjC();
}

+(void)openLib:(lua_State*)state{
    tolua_toluaTest_open(state);
}
@end
