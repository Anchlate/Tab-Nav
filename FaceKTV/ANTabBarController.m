
//
//  ANTabBarController.m
//  FaceKTV
//
//  Created by PENG BAI on 16/2/15.
//  Copyright © 2016年 bp1010. All rights reserved.
//

#import "ANTabBarController.h"

@interface ANTabBarController ()

@end

@implementation ANTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];

    /***  改变tabBar背景颜色的方法  ***/
    // 方法1.
//    [[UITabBar appearance] setBarTintColor:[UIColor redColor]];
//    [UITabBar appearance].translucent = NO;
    
    
    // 方法2.
//    UIView *view = [[UIView alloc]init];
//    view.backgroundColor = [UIColor redColor];
//    view.frame = self.tabBar.bounds;
//    [[UITabBar appearance] insertSubview:view atIndex:0];
    
    // 方法3.
//    [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tabBarBackgroundImage"]];
//    [UITabBar appearance].translucent = NO;
    
    
    
    /***   选中item背景色   ***/
    CGSize indicatorImageSize = CGSizeMake(self.tabBar.bounds.size.width / self.tabBar.items.count, self.tabBar.bounds.size.height);
    
    self.tabBar.selectionIndicatorImage = [self drawTabBarItemBackgroundImageWithSize:indicatorImageSize];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIImage *)drawTabBarItemBackgroundImageWithSize:(CGSize)size
{                                           
    // 准备绘图环境
    UIGraphicsBeginImageContext(size);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBFillColor(ctx, 124.0 / 255, 124.0 / 255, 151.0 / 255, 1);
    CGContextFillRect(ctx, CGRectMake(0, 0, size.width, size.height));
    
    // 获取该绘图中的图片
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    
    //结束绘图
    UIGraphicsEndImageContext();
    
    /*
    // 获取当前应用路径中Documents目录下指定文件名对应的文件路径
    NSString *path = [[NSHomeDirectory() stringByAppendingString:@"/Documents"] stringByAppendingString:@"/tabBarBackgroundImage.png"];
    NSLog(@"path:%@", path);
    // 保存PNG图片
    [UIImagePNGRepresentation(img) writeToFile:path atomically:YES];
    */
    return img;
}

@end
