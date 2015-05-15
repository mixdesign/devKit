//
// Created by Almas Adilbek on 8/19/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UILabel (AADevKitAttributed)

- (void)setColor:(UIColor *)color forSubstring:(NSString *)substring;
- (void)setFont:(UIFont *)font forSubstring:(NSString *)substring;
- (void)setTextColor:(UIColor *)color forSubstring:(NSString *)substring;
- (void)setFont:(UIFont *)font textColor:(UIColor *)color forSubstring:(NSString *)substring;
- (void)setLetterSpacing:(CGFloat)spacing;
- (void)setLetterSpacingMinusOne;
- (void)setLetterSpacingMinusHalfOne;
- (void)makeUnderline;

@end