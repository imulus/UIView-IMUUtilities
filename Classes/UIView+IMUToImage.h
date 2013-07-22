//
//  UIView+IMUToImage.h
//  Imulus
//
//  Created by Bryce Hammond on 6/4/13.
//  Copyright (c) 2013 Imulus, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (IMUToImage)

//returns an image of the current view state
@property (readonly, nonatomic) UIImage *image;

@end
