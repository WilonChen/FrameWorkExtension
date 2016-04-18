//**************************************************************************
//  文件名称 :  Interface.m
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

#import "Interface.h"
#import "FirstViewController.h"

@implementation Interface

- (void)showView:(id)mainController withBundle:(NSBundle *)bundle {
    /*
     *初始化第一个controller
     TheFirstViewController继承于RootViewController
     *这里的重点是xib文件的加载
     　通常我们在初始化xib的时候并不是很在意bundle:这个参数，一般情况下都会赋予nil值
     　其实我们所用到的图片、xib等资源文件都是在程序内部中获取的，也就是我们常用的[NSBundle mainBundle]中获取，所谓的NSBundle本质上就是一个路径，mainBundle指向的是.app下。
     　而如果我们不指定bundle，则会默认从.app路径下去寻找资源。
     　不过很显然，我们的动态库是放到“主程序”的document文件下的，所以资源文件是不可能在[NSbundle mainBundle]中获取到的，所以这里我们需要指定bundle参数，这也是传递framework的路径的意义所在
     */
    FirstViewController *firstController = [[FirstViewController alloc] init];
    //保存NSBundle
    firstController.root_bundle = bundle;
    
    //加上导航栏，并隐藏。
    UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:firstController];
    [navController setNavigationBarHidden:NO];
    
    //转换传递过来的mainCon参数，实现界面跳转
    UIViewController *viewController = (UIViewController *)mainController;
    [viewController presentViewController:navController animated:YES completion:^{
        NSLog(@"跳转到动态更新模块成功!");
    }];
}
@end
