//
//  UIViewController+NavigationBar.h
//  Toppy
//
//  Created by Almas Adilbek on 4/15/15.
//  Copyright (c) 2015 Toppy Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (AADevKitNavigationBar)

- (void)setNavigationTitle:(NSString *)title;
- (void)setNavigationTitle:(NSString *)title withFont:(UIFont *)font;
- (void)setNavigationTitle:(NSString *)title withFont:(UIFont *)font color:(UIColor *)color;

- (void)setNavigationBarColor:(UIColor *)color;
- (void)removeViewControllerFromNavigationControllerAtIndex:(NSInteger)index;

- (void)setNavigationBarButtonWithImage:(NSString *)imageName target:(id)target selector:(SEL)selector atLeft:(BOOL)atLeft;
- (void)setNavigationButton:(UIButton *)button atLeft:(BOOL)atLeft;

- (void)showNavigationBar;
- (void)showNavigationBarAnimated:(BOOL)animated;
- (void)hideNavigationBar;
- (void)hideNavigationBarAnimated:(BOOL)animated;

// Loader
- (void)showNavigationLoaderAtRight:(BOOL)atRight;
- (void)hideNavigationLoader;

// Actions
- (void)goBack;
- (void)hideBack;
- (void)navigationRightBarButtonTapped;
- (void)navigationLeftBarButtonTapped;

@end
