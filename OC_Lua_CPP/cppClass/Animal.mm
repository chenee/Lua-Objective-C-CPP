#include "Animal.h"
#import "Person.h"

Animal::Animal(std::string name):age(0){
    this->name = name;
    Person *p = [Person createItem];//OK
//    Person *p = [[Person alloc]init];//not OK !!
    this->objcHandler= (__bridge void*)p;
    
};
bool Animal::callObjC(){
    Person* p = (__bridge id)this->objcHandler;
    if (p) {
        [p doSomething:@"nothing"];
    }
    
    return true;
}
