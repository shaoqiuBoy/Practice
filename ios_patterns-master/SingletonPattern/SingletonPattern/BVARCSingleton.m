//
//  BVARCSingleton.m
//  SingletonPattern
//
//  Created by BeyondVincent on 13-5-9.
//  Copyright (c) 2013年 BeyondVincent. All rights reserved.
//

#import "BVARCSingleton.h"

@implementation BVARCSingleton

//用GCD的方法
+ (BVARCSingleton *) sharedInstance
{
    static BVARCSingleton *sharedInstance = nil;

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });

    return sharedInstance;
}

- (id)init
{
    self = [super init];
    
    if (self) {
    }
    
    return self;
}

@end
