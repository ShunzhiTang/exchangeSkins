//
//  pictureViewController.m
//  exchangeSkins
//
//  Created by Tsz on 15/11/7.
//  Copyright © 2015年 Tsz. All rights reserved.

#import "pictureViewController.h"
#import "TSZSkinTool.h"
@interface pictureViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;

@property (weak, nonatomic) IBOutlet UILabel *descLabel;

@end

@implementation pictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置图片
    [self setSkin];
}


/**
 * 有了工具类可以实现高度的同意，并且没有很强的耦合性
 */
- (void)setSkin{
    self.iconImage.image = [TSZSkinTool loadImage:@"heart"];
    
    //为了不出现 视觉的疲劳 ，要实现一个页面不同的颜色 ，给 label 设置 背景色
    self.descLabel.backgroundColor = [TSZSkinTool loadColor:@"one_mylabel_bg"];
}


@end
