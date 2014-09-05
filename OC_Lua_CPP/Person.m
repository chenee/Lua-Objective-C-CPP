//
//  Person.m
//  Lua on iOS
//

#import "Person.h"


int l_set_person_name(lua_State *L) {
    // get arguments
    Person *person = (__bridge Person *)lua_touserdata(L, 1);
    NSString *name = [NSString stringWithUTF8String:lua_tostring(L, 2)];

    // set name
    person.name = name;

    // return nothing
    return 0;
}

int l_get_person_name(lua_State *L) {
    lua_pushstring(L, "BOB");
    return 1;
}


@implementation Person

@end
