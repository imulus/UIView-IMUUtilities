//
//  UIView+IMUFrameConvenience.m
//  Imulus
//
//  Created by Bryce Hammond on 5/8/13.
//  Copyright (c) 2013 Imulus. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "UIView+IMUFrameConvenience.h"

@implementation UIView (IMUFrameConvenience)

- (CGPoint)frameOrigin
{
    return self.frame.origin;
}

- (void)setFrameOrigin:(CGPoint)origin
{
	CGRect viewFrame = self.frame;
	viewFrame.origin = origin;
	[self setFrame:viewFrame];
}

- (CGFloat)frameXOrigin
{
    return self.frame.origin.x;
}

- (void)setFrameXOrigin:(CGFloat)xOrigin {
    CGRect viewFrame = self.frame;
    viewFrame.origin.x = xOrigin;
    [self setFrame:viewFrame];
}

- (CGFloat)frameYOrigin
{
    return self.frame.origin.y;
}

- (void)setFrameYOrigin:(CGFloat)yOrigin {
    CGRect viewFrame = self.frame;
    viewFrame.origin.y = yOrigin;
    [self setFrame:viewFrame];
}

- (CGSize)frameSize
{
    return self.frame.size;
}

- (void)setFrameSize:(CGSize)size
{
	CGRect viewFrame = self.frame;
	viewFrame.size = size;
	[self setFrame:viewFrame];
}

- (CGFloat)frameHeight
{
    return self.frame.size.height;
}

- (void)setFrameHeight:(CGFloat)height {
    CGRect viewFrame = self.frame;
    viewFrame.size.height = height;
    [self setFrame:viewFrame];
}

- (CGFloat)frameWidth
{
    return self.frame.size.width;
}

- (void)setFrameWidth:(CGFloat)width {
    CGRect viewFrame = self.frame;
    viewFrame.size.width = width;
    [self setFrame:viewFrame];
}

- (CGFloat)rightBorderXValue {
    return CGRectGetMaxX(self.frame);
}

- (void)setRightBorderXValue:(CGFloat)xValue {
    CGRect viewFrame = self.frame;
    viewFrame.origin.x = xValue - viewFrame.size.width;
    [self setFrame:viewFrame];
}

- (CGFloat)bottomBorderYValue {
    return CGRectGetMaxY(self.frame);
}

- (void)setBottomBorderYValue:(CGFloat)yValue
{
    CGRect viewFrame = self.frame;
    viewFrame.origin.y = yValue - viewFrame.size.height;
    [self setFrame:viewFrame];
}

- (CGRect)frameForBorderWithSize:(CGFloat)size {
    CGFloat x = self.frame.origin.x - size;
    CGFloat y = self.frame.origin.y - size;
    CGFloat width = self.frame.size.width + (size * 2);
    CGFloat height =  self.frame.size.height + (size * 2);
    return CGRectMake(x, y, width, height);
}

- (void)centerVerticallyInSuperviewWithXOrigin:(CGFloat)xOrigin
{
    if(nil == self.superview)
    {
        return;
    }
    
    CGRect superviewBounds = [self.superview bounds];
    CGRect selfFrame = self.frame;
    selfFrame.origin.x = xOrigin;
    selfFrame.origin.y = floor((superviewBounds.size.height - selfFrame.size.height)/2);
    [self setFrame:selfFrame];
}
- (void)centerHorizontallyInSuperviewWithYOrigin:(CGFloat)yOrigin
{
    if(nil == self.superview)
    {
        return;
    }
    
    CGRect superviewBounds = [self.superview bounds];
    CGRect selfFrame = self.frame;
    selfFrame.origin.x = floor((superviewBounds.size.width - selfFrame.size.width)/2);
    selfFrame.origin.y = yOrigin;
    [self setFrame:selfFrame];
}

- (void)centerInSuperview
{
    if(nil == self.superview)
    {
        return;
    }
    
    [self centerInSuperviewWithOffset:CGPointZero];
}

- (void)centerInSuperviewWithOffset:(CGPoint)offset
{
    if(nil == self.superview)
    {
        return;
    }
    CGRect superviewBounds = [self.superview bounds];
    CGRect selfFrame = self.frame;
    selfFrame.origin.x = floor((superviewBounds.size.width - selfFrame.size.width)/2) + offset.x;
    selfFrame.origin.y = floor((superviewBounds.size.height - selfFrame.size.height)/2) + offset.y;
    [self setFrame:selfFrame];
}

@end
