//**************************************************************************
//  文件名称 :  SecondViewController.m
//  HotUpdateFramework
//  文件描述 :
//  Created by wilon on 16/4/3.
//  版权声明 : Copyright © 2016年 Cubead. All rights reserved.
//  修改纪录 : wilon on 16/4/3
//
//  修改内容 :
//
//  Review :
//**************************************************************************

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setTitle:@"返回" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    
    UILabel *lable = [[UILabel alloc] init];
    lable.frame = CGRectMake(20, 64, [UIScreen mainScreen].bounds.size.width - 40, 20);
    lable.textColor = [UIColor redColor];
    lable.text = @"你是不是傻";
    [self.view addSubview:lable];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
