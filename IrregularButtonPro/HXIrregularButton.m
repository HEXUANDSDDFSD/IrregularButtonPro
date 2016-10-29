//
//  HXIrregularButton.m
//  ButtonTest
//
//  Created by zwc on 13-11-22.
//  Copyright (c) 2013年 hexuan. All rights reserved.
//

#import "HXIrregularButton.h"
#import "UIColor+category.h"

@implementation HXIrregularButton

// 取按钮某一点的 RGBA 值
- (UIColor *) colorOfPoint:(CGPoint)point
{
    unsigned char pixel[4] = {0};
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = CGBitmapContextCreate(pixel, 1, 1, 8, 4, colorSpace, kCGImageAlphaPremultipliedLast);
    
    CGContextTranslateCTM(context, -point.x, -point.y);
    
    [self.layer renderInContext:context];
    
    CGContextRelease(context);
    CGColorSpaceRelease(colorSpace);

    UIColor *color = [UIColor colorWithRed:pixel[0]/255.0 green:pixel[1]/255.0 blue:pixel[2]/255.0 alpha:pixel[3]/255.0];
    
    return color;
}

// 当点击事件 发生时 判断是否 响应事件
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    if ([[self colorOfPoint:point] isTransparent]) {
        return NO;
    }
    return YES;
}

@end
