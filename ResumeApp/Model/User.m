//
//  User.m
//  ResumeApp
//
//  Created by Abiú Roldán on 12/04/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import "User.h"

@implementation User

- (User *)createUserWith:(NSDictionary *)data {
    User *user = [[User alloc] init];
    
    user.avatar = [data objectForKey:@"avatar_url"];
    user.blog = [data objectForKey:@"blog"];
    user.htmlUrl = [data objectForKey:@"html_url"];
    user.name = [data objectForKey:@"name"];
    
    return user;
}

@end
