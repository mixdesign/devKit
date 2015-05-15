//
//  UIButton+Tap.m
//  Toppy
//
//  Created by Almas Adilbek on 4/19/15.
//  Copyright (c) 2015 Toppy Inc. All rights reserved.
//

#import "UIButton+AADevKit.h"

@implementation UIButton (AADevKit)

- (void)tap:(id)target selector:(SEL)sel {
    [self addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
}


@end
