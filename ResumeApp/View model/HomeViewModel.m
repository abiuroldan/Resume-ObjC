//
//  HomeViewModel.m
//  ResumeApp
//
//  Created by Abiú Roldán on 12/04/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import "HomeViewModel.h"
#import "APIRouter.h"
#import "GetUserProtocol.h"

@implementation HomeViewModel

- (id)init {
    if (self = [super init]) {
        [self requestUser];
    }
    return self;
}

- (void) requestUser {
    [[APIRouter instance] getUser:^(NSDictionary * _Nullable dataUser, NSString * _Nullable errorMessage) {
        if (dataUser) {
            [self->delegate didGetUser:dataUser];
        } else {
            
        }
    }];
}

- (void) setDelegate:(id)newDelegate {
    delegate = newDelegate;
}

@end
