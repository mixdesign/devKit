//
//  NSObject+PWObject.h
//  Myth
//
//  Created by Almas Adilbek on 1/29/13.
//
//

#import <Foundation/Foundation.h>


@interface NSObject (PWObject)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;

@end
