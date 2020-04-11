//
//  HomeRootView.m
//  ResumeApp
//
//  Created by Abiú Roldán on 27/03/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import "HomeRootView.h"
#import "UIView+UIView_Extension.h"

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
    _name = [[UILabel alloc] init];
    _descriptionLabel = [[UILabel alloc] init];
}

- (void)setupView {
    self.name.textColor = [UIColor blackColor];
    self.name.text = @"Abiu Roldan";
    self.descriptionLabel.textColor = [UIColor blackColor];
    self.descriptionLabel.text = @"This is my description, here I will explain more about what i have been doing";
    self.descriptionLabel.numberOfLines = 0;
    [self.descriptionLabel setTextAlignment:NSTextAlignmentJustified];
    
    
    [self addSubview:self.name];
    [self addSubview:self.descriptionLabel];
}

- (void)addConstraints {
//    self.name.translatesAutoresizingMaskIntoConstraints = NO;
    self.descriptionLabel.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.name.centerXAnchor constraintEqualToAnchor:self.centerXAnchor].active = YES;
//    [self.name.topAnchor constraintEqualToAnchor:self.safeAreaLayoutGuide.topAnchor constant:16].active = YES;
    
    [self.name createConstraintsWithTopAnchor:self.safeAreaLayoutGuide.topAnchor leadingAnchor:nil trailingAnchor:nil bottomAnchor:nil topSpace:16 leftSpace:0 rightSpace:0 bottomSpace:0];
    
    [self.descriptionLabel.centerXAnchor constraintEqualToAnchor:self.centerXAnchor].active = YES;
    [self.descriptionLabel.topAnchor constraintEqualToAnchor:self.name.bottomAnchor constant:12].active = YES;
    [self.descriptionLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor constant:16].active = YES;
    [self.descriptionLabel.trailingAnchor constraintEqualToAnchor:self.trailingAnchor constant:-16].active = YES;
    
    
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

- (id)initWithCoder:(NSCoder *)coder {
    if ((self = [super initWithCoder:coder])) {}
    
    return self;
}

@end
