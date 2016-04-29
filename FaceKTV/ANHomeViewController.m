//
//  ANHomeViewController.m
//  FaceKTV
//
//  Created by PENG BAI on 16/2/15.
//  Copyright © 2016年 bp1010. All rights reserved.
//

#import "ANHomeViewController.h"

@interface ANHomeViewController ()

@end

@implementation ANHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
//    self.view.backgroundColor = [UIColor redColor];
    self.view.backgroundColor = RGBColorAndAlpha(36, 38, 47, 1);
    
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
