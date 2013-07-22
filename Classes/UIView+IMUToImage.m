//
//  UIView+IMUToImage.m
//  Imulus
//
//  Created by Bryce Hammond on 6/4/13.
//  Copyright (c) 2013 Imulus, LLC. All rights reserved.
//

#import "UIView+IMUToImage.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (IMUToImage)

- (UIImage *)image
{
    UIGraphicsBeginImageContext(self.bounds.size);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end
