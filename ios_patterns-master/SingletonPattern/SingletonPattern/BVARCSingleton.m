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

// 当第一次使用这个单例时，会调用这个init方法。
- (id)init
{
    self = [super init];
    
    if (self) {
        // 通常在这里做一些相关的初始化任务
    }
    
    return self;
}

@end
