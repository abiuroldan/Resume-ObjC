//
//  UIView+UIView_Extension.h
//  ResumeApp
//
//  Created by Abiú Roldán on 10/04/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (UIView_Extension)
- (void) createConstraintsWithTopAnchor:(nullable NSLayoutYAxisAnchor *)topAnchor leadingAnchor:(nullable NSLayoutXAxisAnchor *)leadingAnchor trailingAnchor:(nullable NSLayoutXAxisAnchor *)trailingAnchor bottomAnchor:(nullable NSLayoutYAxisAnchor *)bottomAnchor topSpace:(CGFloat *)topSpace leftSpace:(CGFloat *)leftSpace rightSpace:(CGFloat *)rightSpace bottomSpace:(CGFloat *)bottomSpace;
@end

NS_ASSUME_NONNULL_END
