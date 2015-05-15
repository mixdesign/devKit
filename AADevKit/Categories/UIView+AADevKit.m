//
//  UIView+TapGesture.m
//  Toppy
//
//  Created by Almas Adilbek on 4/19/15.
//  Copyright (c) 2015 Toppy Inc. All rights reserved.
//

#import "UIView+AADevKit.h"

@implementation UIView (AADevKit)

- (void)tapGesture:(id)target selector:(SEL)sel
{
    if([self isKindOfClass:[UILabel class]]) {
        self.userInteractionEnabled = YES;
    }
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:target action:sel];
    [self addGestureRecognizer:tapGes];
}

@end