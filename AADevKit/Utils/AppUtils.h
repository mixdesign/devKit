//
//  AppUtils.h
//  Myth
//
//  Created by Almas Adilbek on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface AppUtils : NSObject;

+(NSString *)appVersion;
+(CGFloat)iOSVersion;
+(NSString *)deviceID;

+(BOOL)isFirstRun;
+(BOOL)isRunningFromDevice;

@end
