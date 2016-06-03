//
//  Person.m
//  非ARC开发
//
//  Created by shoule on 16/6/3.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "Person.h"
#import "Book.h"
#import "Dog.h"

@implementation Person
#pragma mark - Dog 属性
- (Dog *)dog{
    return _dog;
}

- (void)setDog:(Dog *)dog{
    if (_dog != dog) {
        [_dog release];
        _dog = [dog retain];
    }
}

#pragma mark - Book 属性
- (Book *)book{
    return _book;
}

- (void)setBook:(Book *)book{
    if (_book != book) {
        [_book release];
        _book = [book retain];
    }
}


- (void)dealloc{
    NSLog(@"%s",__FUNCTION__);
    self.dog = nil;
    self.book = nil;
    [super dealloc];
}

@end
