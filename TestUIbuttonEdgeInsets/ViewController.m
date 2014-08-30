//
//  ViewController.m
//  TestUIbuttonEdgeInsets
//
//  Created by 凌斌星 on 14-8-30.
//  Copyright (c) 2014年 WillisLing. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+EdgeInsetsWrapperMethods.h"

@interface ViewController ()
@property (nonatomic, strong) UIButton* button;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.frame = CGRectMake(20, 20, 180, 180);
    [self.button setBackgroundColor:[[UIColor redColor] colorWithAlphaComponent:0.3]];
    [self.button setImage:[UIImage imageNamed:@"card_visa"] forState:UIControlStateNormal];
    [self.button setTitle:@"card_visa" forState:UIControlStateNormal];
    
    
    [self.button setTitleHorizontalAlignment:UIButtonChildHorizontalAlignment_Right verticalAlignment:UIButtonChildVerticalAlignment_Top];
    [self.button setImageHorizontalAlignment:UIButtonChildHorizontalAlignment_Left verticalAlignment:UIButtonChildVerticalAlignment_Bottom];
    
    [self.button setTitleHorizontalAlignment:UIButtonChildHorizontalAlignment_Left verticalAlignment:UIButtonChildVerticalAlignment_Bottom];
    [self.button setImageHorizontalAlignment:UIButtonChildHorizontalAlignment_Right verticalAlignment:UIButtonChildVerticalAlignment_Top];

    
    [self.view addSubview:self.button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
