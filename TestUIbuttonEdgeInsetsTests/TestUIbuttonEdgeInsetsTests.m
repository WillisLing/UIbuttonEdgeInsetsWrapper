//
//  TestUIbuttonEdgeInsetsTests.m
//  TestUIbuttonEdgeInsetsTests
//
//  Created by 凌斌星 on 14-8-30.
//  Copyright (c) 2014年 WillisLing. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIButton+EdgeInsetsWrapperMethods.h"

@interface TestUIbuttonEdgeInsetsTests : XCTestCase

@end

@implementation TestUIbuttonEdgeInsetsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (UIEdgeInsets)makeRandomEdgeInsets
{
    CGFloat r1 = arc4random() % (NSInteger)CGFLOAT_MAX;
    CGFloat r2 = arc4random() % (NSInteger)CGFLOAT_MAX;
    CGFloat r3 = arc4random() % (NSInteger)CGFLOAT_MAX;
    CGFloat r4 = arc4random() % (NSInteger)CGFLOAT_MAX;
    
    return UIEdgeInsetsMake(r1, r2, r3, r4);
}

- (void)testExample
{
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    {
        button.titleEdgeInsets = [self makeRandomEdgeInsets];
        CGPoint offset = button.titleCenterOffset;
        button.titleCenterOffset = offset;
        CGPoint offset2 = button.titleCenterOffset;
        XCTAssert(CGPointEqualToPoint(offset, offset2), @"测试不通过");
    }
    {
        button.imageEdgeInsets = [self makeRandomEdgeInsets];
        CGPoint offset = button.imageCenterOffset;
        button.imageCenterOffset = offset;
        CGPoint offset2 = button.imageCenterOffset;
        XCTAssert(CGPointEqualToPoint(offset, offset2), @"测试不通过");
    }
}

@end
