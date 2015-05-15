//
//  NSObject+Ext.h
//  WashMe
//
//  Created by Almas Adilbek on 3/1/15.
//  Copyright (c) 2015 Almas Adilbek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PropertyUtils)

- (NSDictionary *)instancePropertyValues;
+ (NSDictionary *)classProps;

@end
