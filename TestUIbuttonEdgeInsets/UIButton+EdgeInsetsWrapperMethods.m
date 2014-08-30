//
//  UIButton+EdgeInsetsWrapperMethods.m
//  TestUIbuttonEdgeInsets
//
//  Created by 凌斌星 on 14-8-30.
//  Copyright (c) 2014年 WillisLing. All rights reserved.
//

#import "UIButton+EdgeInsetsWrapperMethods.h"

@implementation UIButton (EdgeInsetsWrapperMethods)
@dynamic titleCenterOffset;
@dynamic imageCenterOffset;

#pragma mark * synthesize property
- (CGPoint)titleCenterOffset
{
    CGSize imageSize = self.imageView.frame.size;
    UIEdgeInsets titleEdgeInsets = self.titleEdgeInsets;
    CGPoint offset;
    offset.x = - titleEdgeInsets.right - (- titleEdgeInsets.left - imageSize.width);
    offset.y = - titleEdgeInsets.bottom - (- titleEdgeInsets.top);
    return offset;
}
- (void)setTitleCenterOffset:(CGPoint)offset
{
    CGSize imageSize = self.imageView.frame.size;
    self.titleEdgeInsets = UIEdgeInsetsMake(
                                            0.0,
                                            - imageSize.width,
                                            - offset.y,
                                            - offset.x
                                            );
}

- (CGPoint)imageCenterOffset
{
    CGSize titleSize = self.titleLabel.frame.size;
    UIEdgeInsets imageEdgeInsets = self.imageEdgeInsets;
    CGPoint offset;
    offset.x = (- imageEdgeInsets.right - titleSize.width) - (- imageEdgeInsets.left);
    offset.y = - imageEdgeInsets.bottom - (- imageEdgeInsets.top);
    return offset;
}
- (void)setImageCenterOffset:(CGPoint)offset
{
    CGSize titleSize = self.titleLabel.frame.size;
    self.imageEdgeInsets = UIEdgeInsetsMake(
                                            0.0,
                                            0.0,
                                            - offset.y,
                                            - (titleSize.width + offset.x)
                                            );
}
#pragma mark * alignment
- (void)setTitleHorizontalAlignment:(UIButtonChildHorizontalAlignment)hAlignment
                  verticalAlignment:(UIButtonChildVerticalAlignment)vAlignment
{
    CGPoint offset = CGPointZero;
    CGSize buttonSize = self.bounds.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    switch (hAlignment) {
        case UIButtonChildHorizontalAlignment_Left:
        {
            offset.x = - (buttonSize.width - titleSize.width);
        }
            break;
        case UIButtonChildHorizontalAlignment_Center:
        {
            offset.x = 0;
        }
            break;
        case UIButtonChildHorizontalAlignment_Right:
        {
            offset.x = (buttonSize.width - titleSize.width);
        }
            break;
        default:
            offset.x = 0;
            break;
    }
    
    switch (vAlignment) {
        case UIButtonChildVerticalAlignment_Top:
        {
            offset.y = - (buttonSize.height - titleSize.height);
        }
            break;
        case UIButtonChildVerticalAlignment_Center:
        {
            offset.y = 0;
        }
            break;
        case UIButtonChildVerticalAlignment_Bottom:
        {
            offset.y = (buttonSize.height - titleSize.height);
        }
            break;
        default:
            offset.y = 0;
            break;
    }
    
    [self setTitleCenterOffset:offset];
}
- (void)setImageHorizontalAlignment:(UIButtonChildHorizontalAlignment)hAlignment
                  verticalAlignment:(UIButtonChildVerticalAlignment)vAlignment
{
    CGPoint offset = CGPointZero;
    CGSize buttonSize = self.bounds.size;
    CGSize imageSize = self.imageView.frame.size;
    
    switch (hAlignment) {
        case UIButtonChildHorizontalAlignment_Left:
        {
            offset.x = - (buttonSize.width - imageSize.width);
        }
            break;
        case UIButtonChildHorizontalAlignment_Center:
        {
            offset.x = 0;
        }
            break;
        case UIButtonChildHorizontalAlignment_Right:
        {
            offset.x = (buttonSize.width - imageSize.width);
        }
            break;
        default:
            offset.x = 0;
            break;
    }
    
    switch (vAlignment) {
        case UIButtonChildVerticalAlignment_Top:
        {
            offset.y = - (buttonSize.height - imageSize.height);
        }
            break;
        case UIButtonChildVerticalAlignment_Center:
        {
            offset.y = 0;
        }
            break;
        case UIButtonChildVerticalAlignment_Bottom:
        {
            offset.y = (buttonSize.height - imageSize.height);
        }
            break;
        default:
            offset.y = 0;
            break;
    }
    
    [self setImageCenterOffset:offset];
}

@end
