//
// Created by Almas Adilbek on 4/9/14.
// Copyright (c) 2014 Crystal Spring LLC. All rights reserved.
//

#import "NSObject+Json.h"

@implementation NSObject (Json)

-(id)JSONValue {
    NSData * data = [[NSString stringWithString:(id) self] dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    id object = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if(error) {
        NSLog(@"JSONValue Error: %@", error.localizedDescription);
        return nil;
    }
    return object;
}

-(NSString *)JSONRepresentation {
    NSError *writeError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:0 error:&writeError];
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return jsonString;
}


@end