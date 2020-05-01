//
//  HomeRootView.m
//  ResumeApp
//
//  Created by Abiú Roldán on 27/03/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeRootView.h"
#import "UIView+UIView_Extension.h"
#import "User.h"

@implementation HomeRootView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)styleView {
    self.backgroundColor = [UIColor whiteColor];
}

- (void)initViews {
    _profilePhoto = [[UIImageView alloc] init];
    _name = [[UILabel alloc] init];
    _descriptionLabel = [[UILabel alloc] init];
}

- (void)setupView {
    self.name.textColor = [UIColor blackColor];
    self.descriptionLabel.textColor = [UIColor blackColor];
    self.descriptionLabel.numberOfLines = 0;
    [self.descriptionLabel setTextAlignment:NSTextAlignmentJustified];
    
    self.profilePhoto.layer.cornerRadius = (UIScreen.mainScreen.bounds.size.width * 0.35) / 2;
    
    self.profilePhoto.clipsToBounds = YES;
    
    [self addSubview:self.profilePhoto];
    [self addSubview:self.name];
    [self addSubview:self.descriptionLabel];
}

- (void)addConstraints {
    
    [self.profilePhoto createConstraintsWithTopAnchor: self.safeAreaLayoutGuide.topAnchor leadingAnchor: nil trailingAnchor: nil bottomAnchor: nil topSpace: 16 leftSpace: 0 rightSpace: 0 bottomSpace: 0];
    [self.profilePhoto.widthAnchor constraintEqualToAnchor: self.widthAnchor multiplier: 0.35].active = YES;
    [self.profilePhoto.heightAnchor constraintEqualToAnchor: self.profilePhoto.widthAnchor].active = YES;
    [self.profilePhoto.centerXAnchor constraintEqualToAnchor: self.centerXAnchor].active = YES;
    
    [self.name createConstraintsWithTopAnchor: self.profilePhoto.bottomAnchor leadingAnchor: nil trailingAnchor: nil bottomAnchor: nil topSpace: 16 leftSpace: 0 rightSpace: 0 bottomSpace: 0];
    [self.name.centerXAnchor constraintEqualToAnchor:self.centerXAnchor].active = YES;
    
    [self.descriptionLabel createConstraintsWithTopAnchor: self.name.bottomAnchor leadingAnchor: self.leadingAnchor trailingAnchor: self.trailingAnchor bottomAnchor: nil topSpace: 16 leftSpace: 16 rightSpace: -16 bottomSpace: 0];
    [self.descriptionLabel.centerXAnchor constraintEqualToAnchor:self.centerXAnchor].active = YES;
}

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        [self initViews];
        [self styleView];
        [self setupView];
        [self addConstraints];
    }

    return self;
}

- (void) setViewWith:(User *)user {
    self.name.text = user.name;
    self.descriptionLabel.text = user.blog;
    
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString: user.avatar]]];
    self.profilePhoto.image = image;
}

- (void) setLoader {
    _loader = [[UIActivityIndicatorView alloc] init];
    [self addSubview:self.loader];
    [self.loader createConstraintsWithTopAnchor:self.safeAreaLayoutGuide.topAnchor leadingAnchor:self.leadingAnchor trailingAnchor:self.trailingAnchor bottomAnchor:self.safeAreaLayoutGuide.bottomAnchor topSpace:0 leftSpace:0 rightSpace:0 bottomSpace:0];
    [self.loader startAnimating];
}

- (void) deleteLoader {
    [self.loader stopAnimating];
    _loader = nil;
    [self.loader removeFromSuperview];
}


- (id)initWithCoder:(NSCoder *)coder {
    if ((self = [super initWithCoder:coder])) {}
    
    return self;
}

@end
