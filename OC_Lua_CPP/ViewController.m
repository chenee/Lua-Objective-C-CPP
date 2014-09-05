//
//  ViewController.m
//  OC_Lua_CPP
//
//  Created by 陈宜义 on 14-9-5.
//  Copyright (c) 2014年 chenee. All rights reserved.
//

#import "ViewController.h"


#import "LuaManager.h"
#import "Person.h"

#import "TestClass.h"


int l_sum(lua_State *L) {
    // get arguments (`int numberOfArguments = lua_gettop(L)`)
    double x = lua_tonumber(L, 1);
    double y = lua_tonumber(L, 2);
    
    // compute result
    double result = x + y;
    
    // return one result
    lua_pushnumber(L, result);
    return 1;
}

@interface ViewController ()

@property (nonatomic) LuaManager *manager;

@end

@implementation ViewController
@synthesize manager;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    manager = [[LuaManager alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClicked:(id)sender {
    [manager runCodeFromString:@"print(2 + 2)"];
    
    // maintain state
    [manager runCodeFromString:@"x = 0"];
    [manager runCodeFromString:@"print(x + 1)"];
    
    // run file
    NSString *path = [[NSBundle mainBundle] pathForResource:@"foo" ofType:@"lua"];
    [manager runCodeFromFileWithPath:path];
    
    // call objc function from lua
    [manager registerFunction:l_sum withName:@"sum"];
    [manager runCodeFromString:@"print(sum(1, 2))"];
    
    // create a person called Alice
    Person *person = [[Person alloc] init];
    person.name = @"Alice";
    NSLog(@"Person's name is %@.", person.name);
    
    // rename person to Bob
    [manager registerFunction:l_get_person_name withName:@"get_person_name"];
    [manager registerFunction:l_set_person_name withName:@"set_person_name"];
    [manager callFunctionNamed:@"set_person_name_to_bob" withObject:person];
    NSLog(@"Person's name is %@.", person.name);
    
    // call c++
    NSLog(@"=================       call C++ class from OC");
    TestClass *tc = [[TestClass alloc]init];
    [tc initAnimal];
    
    //call lua which call c++
    // run file
    NSLog(@"=================       call C++ class from LUA");
    [manager callFunctionNamed:@"call_cpp_from_lua_use_tolua" withObject:@""];
    
    
}

@end
