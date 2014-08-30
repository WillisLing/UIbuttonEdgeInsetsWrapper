//
//  UIButton+EdgeInsetsWrapperMethods.h
//  TestUIbuttonEdgeInsets
//
//  Created by 凌斌星 on 14-8-30.
//  Copyright (c) 2014年 WillisLing. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  @brief  水平对齐方式
 */
typedef NS_ENUM(NSInteger, UIButtonChildHorizontalAlignment) {
    /**
     *  @brief  居左
     */
    UIButtonChildHorizontalAlignment_Left = 0,
    /**
     *  @brief  居中
     */
    UIButtonChildHorizontalAlignment_Center,
    /**
     *  @brief  居右
     */
    UIButtonChildHorizontalAlignment_Right
};

/**
 *  @brief  垂直对齐方式
 */
typedef NS_ENUM(NSInteger, UIButtonChildVerticalAlignment) {
    /**
     *  @brief  居顶
     */
    UIButtonChildVerticalAlignment_Top = 0,
    /**
     *  @brief  居中
     */
    UIButtonChildVerticalAlignment_Center,
    /**
     *  @brief  居底
     */
    UIButtonChildVerticalAlignment_Bottom
};


@interface UIButton (EdgeInsetsWrapperMethods)
/**
 *  @brief  title 距离中心的偏移
 */
@property (nonatomic, assign) CGPoint titleCenterOffset;
/**
 *  @brief  image 距离中心的偏移
 */
@property (nonatomic, assign) CGPoint imageCenterOffset;

/**
 *  @brief  设置 title 的对齐方式
 *  @param hAlignment 水平对齐方式
 *  @param vAlignment 垂直对齐方式
 */
- (void)setTitleHorizontalAlignment:(UIButtonChildHorizontalAlignment)hAlignment
                  verticalAlignment:(UIButtonChildVerticalAlignment)vAlignment;
/**
 *  @brief  设置 image 的对齐方式
 *  @param hAlignment 水平对齐方式
 *  @param vAlignment 垂直对齐方式
 */
- (void)setImageHorizontalAlignment:(UIButtonChildHorizontalAlignment)hAlignment
                  verticalAlignment:(UIButtonChildVerticalAlignment)vAlignment;
@end
