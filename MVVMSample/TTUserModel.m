//
//  TTUserModel.m
//  MVVMSample
//
//  Created by Matt Chang on 2014/6/8.
//  Copyright (c) 2014年 Accuvally Inc. All rights reserved.
//

#import "TTUserModel.h"

@implementation TTUserModel

- (id)init {
    self = [super init];
    if (self) {
        _name = @"Default Player";
        _number = [NSNumber numberWithInt:100];
        _birth = [NSNumber numberWithInt:1970];
        _positions = @[@0];
        _email = @"";
        _description = @"Default account";
        
    }
    
    return self;
}

@end
