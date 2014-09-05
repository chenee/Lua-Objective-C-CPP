//
//  Person.h
//  Lua on iOS
//

#import <Foundation/Foundation.h>
#import "LuaManager.h"


int l_set_person_name(lua_State *L);
int l_get_person_name(lua_State *L);


@interface Person : NSObject

@property (strong, nonatomic) NSString *name;

+(Person*)createItem;
-(void)doSomething:(NSString *)something;
@end
