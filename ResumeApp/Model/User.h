//
//  User.h
//  ResumeApp
//
//  Created by Abiú Roldán on 12/04/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *avatar;
@property (nonatomic, strong) NSString *blog;
@property (nonatomic, strong) NSString *htmlUrl;
- (User *)createUserWith:(NSDictionary *)data;
@end

NS_ASSUME_NONNULL_END
