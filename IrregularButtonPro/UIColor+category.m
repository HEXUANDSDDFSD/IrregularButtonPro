//
//  UIColor+category.m
//  tysx
//
//  Created by zwc on 13-11-25.
//  Copyright (c) 2013年 huangjia. All rights reserved.
//

#import "UIColor+category.h"

@implementation UIColor (category)

- (BOOL)isTransparent {
   const CGFloat* components =CGColorGetComponents(self.CGColor);
    for (int i = 0; i < 4 ; i++) {
        if (components[i] > 0.000001) {
            return NO;
        }
    }
    return YES;
}

@end
