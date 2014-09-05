//
//  Person.h
//  Lua on iOS
//

#import <Foundation/Foundation.h>

#include "lua.h"


@interface TestClass: NSObject

@property (strong, nonatomic) NSString *name;
-(void)initAnimal;
+(void)openLib:(lua_State*)state;
@end
