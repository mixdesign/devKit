//
//  NSObject+ValidateType.m
//  Toppy
//
//  Created by Almas Adilbek on 4/30/15.
//  Copyright (c) 2015 Toppy Inc. All rights reserved.
//

#import "NSObject+ValidateType.h"

@implementation NSObject (ValidateType)

- (BOOL)isValidArray {
    return self != nil && [self isKindOfClass:[NSArray class]];
}


@end
