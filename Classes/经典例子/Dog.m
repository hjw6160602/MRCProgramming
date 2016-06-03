//
//  Dog.m
//  非ARC开发
//
//  Created by shoule on 16/6/3.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)dealloc{
    NSLog(@"%s",__FUNCTION__);
    [super dealloc];
}

@end
