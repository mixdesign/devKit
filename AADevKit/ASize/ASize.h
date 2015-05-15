//
//  ASize.h
//  ASizeDemo
//
//  Created by Almas Adilbek on 12/2/13.
//  Copyright (c) 2013 GoodApp inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

@interface ASize : NSObject

+ (CGFloat) screenWidth;
+ (CGFloat) screenHeight;
+ (CGFloat) screenHalfWidth;
+ (CGFloat) screenHalfHeight;
+ (CGFloat) screenWidthPercent:(CGFloat)percent;
+ (CGFloat) screenHeightPercent:(CGFloat)percent;
+ (CGFloat) screenHeightWithoutStatusBar;
+ (CGFloat) screenHeightWithoutStatusBarAndTabBar;
+ (CGFloat) screenHeightWithoutStatusBarAndNavigationBar;
+ (CGFloat) screenHeightWithoutStatusBarAndNavigationBarAndTabBar;
+ (CGFloat) screenHeightWithoutNavigationBar;
+ (CGFloat) screenHeightWithoutStatusBarAndNavigationBarAnd:(CGFloat)px;
+ (CGFloat) screenHeightWithout:(CGFloat)px;
+ (CGFloat) screenWidthWithPadding:(CGFloat)padding;

+ (CGSize) screenSize;
+ (CGSize) screenSizeInOrientation:(UIInterfaceOrientation)orientation;

@end
