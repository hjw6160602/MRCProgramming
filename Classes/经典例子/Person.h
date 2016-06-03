//
//  Person.h
//  非ARC开发
//
//  Created by shoule on 16/6/3.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dog,Book;

@interface Person : NSObject
{
    Dog *_dog;
    Book *_book;
}

- (Dog *)dog;
- (void)setDog:(Dog *)dog;

- (Book *)book;
- (void)setBook:(Book *)book;

@end
