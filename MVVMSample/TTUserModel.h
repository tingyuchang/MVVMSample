//
//  TTUserModel.h
//  MVVMSample
//
//  Created by Matt Chang on 2014/6/8.
//  Copyright (c) 2014年 Accuvally Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTUserModel : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *number;
@property (strong, nonatomic) NSNumber *birth;
@property (strong, nonatomic) NSArray *positions;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *description;


@end
