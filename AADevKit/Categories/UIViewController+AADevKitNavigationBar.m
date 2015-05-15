//
//  UIViewController+NavigationBar.m
//  Toppy
//
//  Created by Almas Adilbek on 4/15/15.
//  Copyright (c) 2015 Toppy Inc. All rights reserved.
//

#import "UIViewController+AADevKitNavigationBar.h"
#import "UILabel+AADevKitAttributed.h"
#import "ASize.h"

@implementation UIViewController (AADevKitNavigationBar)

-(void)setNavigationTitle:(NSString *)title {
    [self setNavigationTitle:title withFont:[UIFont systemFontOfSize:16] color:[UIColor blackColor]];
}

- (void)setNavigationTitle:(NSString *)title withFont:(UIFont *)font {
    [self setNavigationTitle:title withFont:font color:[UIColor blackColor]];
}

-(void)setNavigationTitle:(NSString *)title withFont:(UIFont *)font color:(UIColor *)color
{
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.font = font;
    titleLabel.textColor = color;
    titleLabel.text = title;
    [titleLabel setLetterSpacingMinusHalfOne];

    [titleLabel sizeToFit];
    CGRect f = titleLabel.frame;
    f.origin.x = (CGFloat) (([ASize screenWidth] - f.size.width) * 0.5);
    f.origin.y = (CGFloat) ((44 - f.size.height) * 0.5);
    titleLabel.frame = f;
    self.navigationItem.titleView = titleLabel;
}

- (void)setNavigationBarColor:(UIColor *)color {
    [self.navigationController.navigationBar setBarTintColor:color];
}

- (void)removeViewControllerFromNavigationControllerAtIndex:(NSInteger)index
{
    NSMutableArray *viewControllers = [self.navigationController.viewControllers mutableCopy];
    [viewControllers removeObjectAtIndex:0];
    self.navigationController.viewControllers = viewControllers;
}

-(void)setNavigationBarButtonWithImage:(NSString *)imageName target:(id)target selector:(SEL)selector atLeft:(BOOL)atLeft
{
    UIImage *image = [UIImage imageNamed:imageName];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    [button setBackgroundImage:image forState:UIControlStateNormal];
//    button.showsTouchWhenHighlighted = YES;
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];

    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:button];

    if(atLeft) {
        self.navigationItem.leftBarButtonItem = barButton;
    } else {
        self.navigationItem.rightBarButtonItem = barButton;
    }
}

#pragma mark -
#pragma mark Navigation visibility

- (void)showNavigationBar {
    if(self.navigationController) {
        [self showNavigationBarAnimated:NO];
    }
}

- (void)showNavigationBarAnimated:(BOOL)animated {
    if(self.navigationController) {
        [self.navigationController setNavigationBarHidden:NO animated:animated];
    }
}

- (void)hideNavigationBar {
    if(self.navigationController) {
        [self hideNavigationBarAnimated:NO];
    }
}

- (void)hideNavigationBarAnimated:(BOOL)animated {
    if(self.navigationController) {
        [self.navigationController setNavigationBarHidden:YES animated:animated];
    }
}

#pragma mark -
#pragma mark Loader

- (void)showNavigationLoaderAtRight:(BOOL)atRight
{
    UIActivityIndicatorView *loader = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    loader.hidesWhenStopped = YES;
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:loader];

    if(atRight) {
        self.navigationItem.rightBarButtonItem = barButtonItem;
    } else {
        self.navigationItem.leftBarButtonItem = barButtonItem;
    }

    [loader startAnimating];
}

- (void)hideNavigationLoader
{
    id customView = self.navigationItem.rightBarButtonItem.customView;
    if(customView && [customView isKindOfClass:[UIActivityIndicatorView class]]) {
        UIActivityIndicatorView *loader = (UIActivityIndicatorView *)customView;
        if(loader.isAnimating) [loader stopAnimating];
        self.navigationItem.rightBarButtonItem = nil;
    }
}

- (void)setNavigationButton:(UIButton *)button atLeft:(BOOL)atLeft
{
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    if(atLeft) {
        self.navigationItem.leftBarButtonItem = buttonItem;
    } else {
        self.navigationItem.rightBarButtonItem = buttonItem;
    }
}

- (void)hideBack {
    self.navigationItem.hidesBackButton = YES;
}

- (void)navigationRightBarButtonTapped
{

}

- (void)navigationLeftBarButtonTapped
{

}


#pragma mark -
#pragma mark Actions

- (void)goBack {
    if(self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}


@end
