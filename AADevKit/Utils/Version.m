//
//  Version.m
//  PitStopRU
//
//  Created by Almas Adilbek on 12/28/13.
//  Copyright (c) 2013 CrystalSpring. All rights reserved.
//

#import "Version.h"

@implementation Version

+(BOOL)isIpad {
    return UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
}

+ (BOOL)iOS8OrLater {
    return SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0");
}

+ (CGFloat)iphone4:(CGFloat)iphone4Value taller:(CGFloat)tallerValue {
    CGFloat h = [[UIScreen mainScreen] bounds].size.height;
    if(h == 480) return iphone4Value;
    return tallerValue;
}

+ (CGFloat)iphone4:(CGFloat)iphone4Value iphone5:(CGFloat)iphone5Value iphone6:(CGFloat)iphone6Value iphone6Plus:(CGFloat)iphone6HDValue {
    CGFloat w = [[UIScreen mainScreen] bounds].size.width;
    CGFloat h = [[UIScreen mainScreen] bounds].size.height;
    if(w == 320) {
        if(h == 480) return iphone4Value;
        else return iphone5Value;
    }
    if(w == 375) return iphone6Value;
    return iphone6HDValue;
}

+ (CGFloat)iphone4:(CGFloat)iphone4Value iphone5:(CGFloat)iphone5Value iphone6:(CGFloat)iphone6Value iphone6Plus:(CGFloat)iphone6HDValue ipad:(CGFloat)ipadValue {
    if([self isIpad]) return ipadValue;

    CGFloat w = [[UIScreen mainScreen] bounds].size.width;
    CGFloat h = [[UIScreen mainScreen] bounds].size.height;
    if(w == 320) {
        if(h == 480) return iphone4Value;
        else return iphone5Value;
    }
    if(w == 375) return iphone6Value;
    return iphone6HDValue;
}


+ (CGFloat)iphone5:(CGFloat)iphone5Value iphone6:(CGFloat)iphone6Value iphone6HD:(CGFloat)iphone6HDValue
{
    CGFloat w = [[UIScreen mainScreen] bounds].size.width;
    if(w == 320) return iphone5Value;
    if(w == 375) return iphone6Value;
    return iphone6HDValue;
}

+ (CGFloat)iphone6:(CGFloat)iphone6Value iphone6Plus:(CGFloat)iphone6PlusValue {
    return [self isIphone6] ? iphone6Value : iphone6PlusValue;
}

+ (BOOL)isIphone4 {
    CGFloat h = [[UIScreen mainScreen] bounds].size.height;
    return h == 480;
}

+(BOOL)isIphone6 {
    CGFloat w = [[UIScreen mainScreen] bounds].size.width;
    return w == 375;
}

+(BOOL)isIphone6Plus {
    CGFloat w = [[UIScreen mainScreen] bounds].size.width;
    return w == 414;
}


@end
