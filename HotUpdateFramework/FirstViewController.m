//**************************************************************************
//  文件名称 :  FirstViewController.m
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

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"热更新";
    
    UILabel *tipLable = [[UILabel alloc] init];
    tipLable.frame = CGRectMake(20, 64, [UIScreen mainScreen].bounds.size.width - 40, 30);
    tipLable.text = @"热更新第一个界面";
    tipLable.textColor = [UIColor redColor];
    [self.view addSubview:tipLable];
    
    UIButton *pushNextController = [UIButton buttonWithType:UIButtonTypeCustom];
    pushNextController.frame = CGRectMake(20, CGRectGetMaxY(tipLable.frame) + 20, tipLable.frame.size.width, 30);
    [pushNextController setTitle:@"点击进入下一个界面" forState:UIControlStateNormal];
    [pushNextController setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    pushNextController.backgroundColor = [UIColor yellowColor];
    [pushNextController addTarget:self action:@selector(pushNextCotroller) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushNextController];
    
}

- (void)pushNextCotroller  {
    SecondViewController *secondController = [[SecondViewController alloc] init];
    secondController.root_bundle = self.root_bundle;
    [self.navigationController pushViewController:secondController animated:YES];

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
