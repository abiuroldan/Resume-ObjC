//
//  HomeRootView.h
//  ResumeApp
//
//  Created by Abiú Roldán on 27/03/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface HomeRootView : UIView
@property (nonatomic, strong) UILabel *name;
@property (nonatomic, strong) UILabel *descriptionLabel;
@property (nonatomic, strong) UIImageView *profilePhoto;
@property (nonatomic, strong) UIActivityIndicatorView *loader;
- (void) setViewWith:(User *)user;
- (void) setLoader;
- (void) deleteLoader;
@end

NS_ASSUME_NONNULL_END
