//
//  UIView+UIView_Extension.m
//  ResumeApp
//
//  Created by Abiú Roldán on 10/04/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import "UIView+UIView_Extension.h"

@implementation UIView (UIView_Extension)

- (void) createConstraintsWithTopAnchor:(nullable NSLayoutYAxisAnchor *)topAnchor leadingAnchor:(nullable NSLayoutXAxisAnchor *)leadingAnchor trailingAnchor:(nullable NSLayoutXAxisAnchor *)trailingAnchor bottomAnchor:(nullable NSLayoutYAxisAnchor *)bottomAnchor topSpace:(CGFloat)topSpace leftSpace:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace bottomSpace:(CGFloat)bottomSpace {
    
    self.translatesAutoresizingMaskIntoConstraints = NO;
    
    if (topAnchor != nil) {
        [self.topAnchor constraintEqualToAnchor:topAnchor constant: topSpace].active = YES;
    }
    
    if (leadingAnchor != nil) {
        [self.leadingAnchor constraintEqualToAnchor:leadingAnchor constant: leftSpace].active = YES;
    }
    
    if (trailingAnchor != nil) {
        [self.trailingAnchor constraintEqualToAnchor:trailingAnchor constant: rightSpace].active = YES;
    }
    
    if (bottomAnchor != nil) {
        [self.bottomAnchor constraintEqualToAnchor:bottomAnchor constant: bottomSpace].active = YES;
    }
}

@end
