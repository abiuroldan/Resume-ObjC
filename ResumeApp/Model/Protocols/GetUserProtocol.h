//
//  GetUserProtocol.h
//  ResumeApp
//
//  Created by Abiú Roldán on 12/04/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GetUserProtocol <NSObject>
- (void) didGetUser:(NSDictionary *)data;
@end

NS_ASSUME_NONNULL_END
