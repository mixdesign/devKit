//
//  UIImage+Extensions.m
//  Myth
//
//  Created by Almas Adilbek on 8/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIImage+AADevKit.h"

@implementation UIImage (AADevKit)

+(UIImage *)imageWithView:(UIView *)view
{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, 0.0);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

-(UIImage *)colorizeImageToColor:(UIColor *)theColor {
    CGRect rect = CGRectMake(0.0f, 0.0f, self.size.width, self.size.height);

    if (UIGraphicsBeginImageContextWithOptions) {
        CGFloat imageScale = self.scale;
        UIGraphicsBeginImageContextWithOptions(self.size, NO, imageScale);
    }

    [self drawInRect:rect];

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(context, kCGBlendModeSourceIn);

    CGContextSetFillColorWithColor(context, theColor.CGColor);
    CGContextFillRect(context, rect);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}

- (UIImage *)resizeImageToMinimumEdge:(CGFloat)size
{
    CGFloat w;
    CGFloat h;
    CGFloat ratio = MAX(self.size.width, self.size.height) / MIN(self.size.width, self.size.height);
    if(self.size.width < self.size.height) {
        w = size;
        h = w * ratio;
    } else {
        h = size;
        w = h * ratio;
    }

    UIGraphicsBeginImageContext(CGSizeMake(w, h));
    [self drawInRect:CGRectMake(0, 0, w, h)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end
