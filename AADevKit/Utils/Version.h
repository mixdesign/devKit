//
//  Version.h
//  PitStopRU
//
//  Created by Almas Adilbek on 12/28/13.
//  Copyright (c) 2013 CrystalSpring. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

@interface Version : NSObject

+ (BOOL)isIpad;

+ (BOOL)iOS8OrLater;

+ (CGFloat)iphone4:(CGFloat)iphone4Value taller:(CGFloat)tallerValue;
+ (CGFloat)iphone4:(CGFloat)iphone4Value iphone5:(CGFloat)iphone5Value iphone6:(CGFloat)iphone6Value iphone6Plus:(CGFloat)iphone6HDValue;
+ (CGFloat)iphone4:(CGFloat)iphone4Value iphone5:(CGFloat)iphone5Value iphone6:(CGFloat)iphone6Value iphone6Plus:(CGFloat)iphone6HDValue ipad:(CGFloat)ipadValue;
+ (CGFloat)iphone5:(CGFloat)iphone5Value iphone6:(CGFloat)iphone6Value iphone6HD:(CGFloat)iphone6HDValue;
+ (CGFloat)iphone6:(CGFloat)iphone6Value iphone6Plus:(CGFloat)iphone6PlusValue;

+ (BOOL)isIphone4;
+ (BOOL)isIphone6;
+ (BOOL)isIphone6Plus;

@end
