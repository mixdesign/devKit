//
//  AppUtils.m
//  Myth
//
//  Created by Almas Adilbek on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppUtils.h"
#import "UIKit/UIKit.h"

#define kDeviceIDKey @"deviceId"

@implementation AppUtils

+(NSString *)appVersion {
    return [[NSBundle mainBundle] infoDictionary][@"CFBundleShortVersionString"];
}
+(CGFloat)iOSVersion {
    NSString *ver = [UIDevice currentDevice].systemVersion;
    NSArray *versionCompatibility = [ver componentsSeparatedByString:@"."];
    if([versionCompatibility count] > 2) {
        ver = [NSString stringWithFormat:@"%@.%@", versionCompatibility[0], versionCompatibility[1]];
    }
    return [ver floatValue];
}

+ (NSString *)deviceID {
    NSString *deviceId = [[NSUserDefaults standardUserDefaults] valueForKey:kDeviceIDKey];
    if(!deviceId) {
        deviceId = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
        [[NSUserDefaults standardUserDefaults] setValue:deviceId forKey:kDeviceIDKey];
    }
    return deviceId;
}

+(BOOL)isFirstRun {
    NSString *key = @"appFirstRunDone";
    NSString *isFirstRun = [[NSUserDefaults standardUserDefaults] valueForKey:key];
    if(!isFirstRun) {
        [[NSUserDefaults standardUserDefaults] setValue:@"1" forKey:key];
        return YES;
    }
    return NO;
}

+(BOOL)isRunningFromDevice {
    return [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera];
}

@end
