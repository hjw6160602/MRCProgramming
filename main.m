//
//  main.m
//  非ARC开发
//
//  Created by shoule on 16/6/3.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc]init];//person 1
        Dog *dog = [[Dog alloc]init];// dog 1
//        Dog *dog2 = [[Dog alloc]init];// dog2 1

        person.dog = dog;// dog: 2
        
        [dog release];// dog: 1
        
        person.dog = dog;
        person.dog = dog;
        person.dog = dog;
        person.dog = dog;
        
//        person.dog = dog2; //dog: 1, dog2: 2
        
//        [dog2 release];// dog2: 1
        
        [person release];// person:0, dog2:0 dog:0
        NSLog(@"Hello, World!");
    }
    return 0;
}
