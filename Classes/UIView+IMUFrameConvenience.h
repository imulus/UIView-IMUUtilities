//
//  UIView+IMUFrameConvenience.h
//  Imulus
//
//  Created by Bryce Hammond on 5/8/13.
//  Copyright (c) 2013 Imulus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (IMUFrameConvenience)

@property (assign, nonatomic) CGSize frameSize;
@property (assign, nonatomic) CGFloat frameHeight;
@property (assign, nonatomic) CGFloat frameWidth;

@property (assign, nonatomic) CGPoint frameOrigin;
@property (assign, nonatomic) CGFloat frameXOrigin;
@property (assign, nonatomic) CGFloat frameYOrigin;

@property (assign, nonatomic) CGFloat rightBorderXValue;
@property (assign, nonatomic) CGFloat bottomBorderYValue;

- (CGRect)frameForBorderWithSize:(CGFloat)size;

- (void)centerVerticallyInSuperviewWithXOrigin:(CGFloat)xOrigin;
- (void)centerHorizontallyInSuperviewWithYOrigin:(CGFloat)yOrigin;
- (void)centerInSuperview;
- (void)centerInSuperviewWithOffset:(CGPoint)offset;

@end
