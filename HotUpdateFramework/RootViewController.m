//**************************************************************************
//  文件名称 :  RootViewController.m
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


#import "RootViewController.h"
@interface RootViewController ()
{
}
@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
//    [self layoutNavControls];
    
}

- (void)setNavi {
    
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

#pragma mark -导航栏上的控件
- (void)layoutNavControls
{
    //导航栏
    UIImageView *navImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 1024, 64)];
    /*
     *注意获取图片的方式，通过路径+图片名称去获取
     *如果直接使用[UIImage imageNamed:@"root_top_bg.png"]方式加载是会出现问题，
     　因为在当前程序的路径下是找不到此图片的，图片也会被封装到framwork中
     *如果在xib文件中直接为某个控件添加图片的话，和平常使用一样直接添加图片名称，不会出现路径的问题
     */
//    [navImageView setImage:[UIImage imageWithContentsOfFile:[self.root_bundle pathForResource:@"root_top_bg" ofType:@"png"]]];
    
//    [navImageView setUserInteractionEnabled:YES];
//    [self.view addSubview:navImageView];
//    
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0, 20, 1024, 44)];
    [navImageView addSubview:topView];
    
    //返回按钮
    UIButton *navDownBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [navDownBtn setFrame:CGRectMake(0, 0, 55, 44)];
    [navDownBtn setBackgroundColor:[UIColor clearColor]];
    [navDownBtn setTag:111];
    [navDownBtn addTarget:self action:@selector(left:) forControlEvents:UIControlEventTouchUpInside];
    UIImageView *backImageView = [[UIImageView alloc]initWithFrame:CGRectMake(15, 10, 15, 20)];
    [backImageView setImage:[UIImage imageWithContentsOfFile:[self.root_bundle pathForResource:@"b_back" ofType:@"png"]]];
    [navDownBtn addSubview:backImageView];
    [topView addSubview:navDownBtn];
}

#pragma mark -- 导航栏按钮方法
//导航栏按钮方法
- (void)left:(id)sender
{
    if ([self.navigationController.viewControllers count] > 1) {
        [self.navigationController popViewControllerAnimated:YES];
    }else {
        [self dismissViewControllerAnimated:YES completion:^{
        }];
    }
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
