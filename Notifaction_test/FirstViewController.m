//
//  ViewController.m
//  Notifaction_test
//
//  Created by 鹏 刘 on 16/9/23.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UIButton *button;

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100, 80, 100, 90)];
    self.label.backgroundColor = [UIColor blackColor];
    self.label.textColor = [UIColor blueColor];
    
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(250, 90, 120, 95)];
    self.button.backgroundColor = [UIColor greenColor];
    [self.button setTitle:@"Pass" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(pass:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.button];
   
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notice:) name:@"myNotification" object:nil];
    
}

- (IBAction)pass:(id)sender
{
    SecondViewController *svc = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:svc animated:YES];
}


- (void)notice:(NSNotification *)text
{
    self.label.text = text.userInfo[@"one"];
    
}



@end
