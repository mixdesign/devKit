//
// Created by Almas Adilbek on 8/19/14.
//

#import <CoreText/CoreText.h>
#import "UILabel+AADevKitAttributed.h"


@implementation UILabel (AADevKitAttributed)

- (void)setColor:(UIColor *)color forSubstring:(NSString *)substring
{
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithAttributedString: self.attributedText];

    [text addAttribute:NSForegroundColorAttributeName value:color range:[self.text rangeOfString:substring]];
    [self setAttributedText: text];
}

- (void)setFont:(UIFont *)font forSubstring:(NSString *)substring {
    [self setFont:font textColor:nil forSubstring:substring];
}

- (void)setTextColor:(UIColor *)color forSubstring:(NSString *)substring {
    [self setFont:nil textColor:color forSubstring:substring];
}

- (void)setFont:(UIFont *)font textColor:(UIColor *)color forSubstring:(NSString *)substring
{
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithAttributedString: self.attributedText];
    NSRange substringRange = [self.text rangeOfString:substring];

    [text beginEditing];
    if(font) [text addAttribute:NSFontAttributeName value:font range:substringRange];
    if(color) [text addAttribute:NSForegroundColorAttributeName value:color range:substringRange];
    [text endEditing];

    self.attributedText = text;
}

- (void)setLetterSpacing:(CGFloat)spacing
{
    if(!self.text) {
        NSLog(@"%@", [NSString stringWithFormat:@"%@ Set UILabel text first before setLetterSpacing", self]);
        return;
    }
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self.text];

    [attributedString addAttribute:NSKernAttributeName
                             value:@(spacing)
                             range:NSMakeRange(0, [self.attributedText length])];

    self.attributedText = attributedString;
}

- (void)setLetterSpacingMinusOne {
    [self setLetterSpacing:-1];
}

- (void)setLetterSpacingMinusHalfOne {
    [self setLetterSpacing:-0.5f];
}


- (void)makeUnderline
{
    NSDictionary *underlineAttribute = @{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)};
    self.attributedText = [[NSAttributedString alloc] initWithString:self.text attributes:underlineAttribute];
}


@end