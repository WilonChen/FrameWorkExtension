//**************************************************************************
//  文件名称 :  Interface.h
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


#import <Foundation/Foundation.h>

@interface Interface : NSObject
/*
 主程序和此动态库的关系枢纽，也就是从“主程序”到“动态库内封装的程序”的入口方法
 @param mainController “主程序”中入口按钮所在的ViewController对象
 @param bundle 此动态库在document文件中的路径，用于xib的加载和图片的加载
 */
-(void)showView:(id)mainController withBundle:(NSBundle *)bundle;

@end
