//  ViewController.m
//  exchangeSkins
//  Created by Tsz on 15/11/7.
//  Copyright © 2015年 Tsz. All rights reserved.

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *face;

@property (weak, nonatomic) IBOutlet UIImageView *heart;

@property (weak, nonatomic) IBOutlet UIImageView *rect;

@property (weak ,nonatomic) IBOutlet UISegmentedControl *segmented;
@end
///Users/tang/Desktop/iOS代码/知识扩展/同名图片换肤问题/exchangeSkins/exchangeSkins/exchangeSkins/skin/blue/face.png
@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.face.image = [UIImage imageNamed:@"skin/blue/face.png"];
    
}


/**
 *  皮肤设置界面 提供选项卡 决定皮肤样式
 *
 *  @param senderv
 */

- (IBAction)changeSkin:(UISegmentedControl *)sender {
    
    /*
    // 第二种方法是 使用 bundle 去 加载 同名的 image
    switch (sender.selectedSegmentIndex) {
        case 3://绿色
            //如果是图片名 mainbundle
            self.face.image = [UIImage imageNamed:@"green.bundle/face"];
            self.heart.image = [UIImage imageNamed:@"green.bundle/heart"];
            self.rect.image = [UIImage imageNamed:@"green.bundle/rect"];
            break;
        case 0://蓝色
        {
            self.face.image = [UIImage imageNamed:@"blue.bundle/face"];
            self.heart.image = [UIImage imageNamed:@"blue.bundle/heart"];
            self.rect.image = [UIImage imageNamed:@"blue.bundle/rect"];
        }
            break;
        default:
            break;
    }*/

    
    // titleForSegmentAtIndex 获取当前选项的标题
    [[NSUserDefaults standardUserDefaults] setObject:[sender titleForSegmentAtIndex:sender.selectedSegmentIndex] forKey:@"skin"];
    
    [self setSkin];
}


/**
 *  根据归档的valu去设置控件
 */
- (void)setSkin{
    
    //解档 得到 存储的标题
    NSString *titleColor = [[NSUserDefaults standardUserDefaults] valueForKey:@"skin"];
    
//    NSLog(@"%@",titleColor);
    self.face.image = [UIImage imageNamed:[NSString stringWithFormat:@"skin/%@/face.png" , titleColor]];
    self.heart.image = [UIImage imageNamed:[NSString stringWithFormat:@"skin/%@/heart.png" , titleColor]];
    self.rect.image = [UIImage imageNamed:[NSString stringWithFormat:@"skin/%@/rect.png" , titleColor]];
}




//- (void)viewDidAppear:(BOOL)animated{
//    [super viewDidAppear:animated];
//

    //第一种方法 ，直接拖进来实体的文件  ， 直接 获取 图片名
//     self.face.image = [UIImage imageNamed:@"skin/blue/face.png"];
//}


@end
