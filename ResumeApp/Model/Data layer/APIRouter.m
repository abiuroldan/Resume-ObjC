//
//  APIRouter.m
//  ResumeApp
//
//  Created by Abiú Roldán on 28/03/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import "APIRouter.h"

#define URL_BASE "https://api.github.com/users"
#define URL_USER "/abiuroldan"

@implementation APIRouter

+ (id) instance {
    static APIRouter *sharedAPIRouter;
    
    @synchronized (self) {
        if (sharedAPIRouter == nil) {
            sharedAPIRouter = [[APIRouter alloc] init];
        }
    }
    
    return sharedAPIRouter;
}

- (void) getUser:(onComplete)complitionHandler {
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s", URL_BASE, URL_USER]];
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (data != nil) {
            NSError *err;
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
            
            if (err != nil) {
                complitionHandler(json, nil);
            } else {
                complitionHandler(nil, @"Data is corrupt. Please try again");
            }
        } else {
            NSLog(@"Network Err: %@", error.debugDescription);
            complitionHandler(nil, @"Problem conneting to the server.");
        }
    }] resume];
}

@end
