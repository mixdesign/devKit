//
//  UIImage+Extensions.h
//  Myth
//
//  Created by Almas Adilbek on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (AADevKit)

+ (UIImage *)imageWithView:(UIView *)view;
- (UIImage *)resizeImageToMinimumEdge:(CGFloat)size;
- (UIImage *)colorizeImageToColor:(UIColor *)theColor;

@end
