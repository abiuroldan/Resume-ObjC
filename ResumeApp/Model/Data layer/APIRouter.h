//
//  APIRouter.h
//  ResumeApp
//
//  Created by Abiú Roldán on 28/03/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^onComplete)(NSDictionary * __nullable dataUser, NSString * __nullable errorMessage);

NS_ASSUME_NONNULL_BEGIN

@interface APIRouter : NSObject
+ (id) instance;
- (void) getUser:(nullable onComplete)complitionHandler;
@end

NS_ASSUME_NONNULL_END
