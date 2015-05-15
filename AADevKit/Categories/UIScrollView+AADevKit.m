//
//  UIScrollView+Ext.m
//  Toppy
//
//  Created by Almas Adilbek on 4/19/15.
//  Copyright (c) 2015 Toppy Inc. All rights reserved.
//

#import "UIScrollView+AADevKit.h"
#import <Foundation/Foundation.h>

@implementation UIScrollView (AADevKit)

- (NSUInteger)currentPageHorizontal {
    CGFloat pageWidth = self.frame.size.width;
    return (NSUInteger) ((self.contentOffset.x + (0.5f * pageWidth)) / pageWidth);
}

@end
