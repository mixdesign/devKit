//
//  NSString+Ext.h
//  HomeCredit
//
//  Created by Almas Adilbek on 3/18/14.
//  Copyright (c) 2014 Crystal Spring LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AADevKit)

-(NSString *)trim;
-(BOOL)isNumeric;
-(BOOL)isPreciseNumeric;
-(NSString *)formattedNumberText;
+(NSString *)formattedNumberText:(NSString *)numberStr;
-(NSString *)uppercaseFirstLetter;
- (NSDate *)dateWithDateFormat:(NSString *)dateFormat;
-(BOOL)isEmpty;
-(BOOL)isNotEmpty;

-(NSString *)phoneNumberPresentation;
-(NSString *)phoneNumberValidForCall;

- (NSString *)stringByStrippingHTML;

+ (NSString *)base64String:(NSString *)str;

@end
