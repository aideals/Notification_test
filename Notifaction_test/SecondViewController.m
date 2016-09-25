//
//  SecondViewController.m
//  Notifaction_test
//
//  Created by 鹏 刘 on 16/9/23.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UIButton *button;
@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100, 250, 100, 80)];
    self.label.backgroundColor = [UIColor blackColor];
    self.label.textColor = [UIColor whiteColor];
    self.label.text = @"wo ai ni!";
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(150, 235, 100, 95)];
    self.button.backgroundColor = [UIColor blackColor];
    [self.button setTitle:@"pass" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(goToFirstView:) forControlEvents:UIControlEventTouchDown];
    
    
    [self.view addSubview:self.button];
    [self.view addSubview:self.label];
    
  
    

}

- (IBAction)goToFirstView:(id)sender
{
    NSNotification *notification = [[NSNotification alloc] initWithName:@"myNotification" object:nil userInfo:@{@"one":self.label.text}];
    [[NSNotificationCenter defaultCenter] postNotification:notification];
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
