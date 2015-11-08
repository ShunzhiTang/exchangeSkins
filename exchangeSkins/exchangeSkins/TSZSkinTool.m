//
//  TSZSkinTool.m
//  exchangeSkins
//
//  Created by Tsz on 15/11/7.
//  Copyright © 2015年 Tsz. All rights reserved.
//

#import "TSZSkinTool.h"
static NSString *_skin;
@implementation TSZSkinTool


//默认情况下显示 索引为0 的 颜色
+ (void)initialize{
    _skin = [[NSUserDefaults standardUserDefaults] objectForKey:@"skinType"];
    if (_skin == nil) {
        _skin = @"blue";
    }
}


+ (UIImage *)loadImage:(NSString *)imageName{
    NSString *skinString = [[NSUserDefaults standardUserDefaults] valueForKey:@"skinType"];
    NSString *pathName = [NSString stringWithFormat:@"skin/%@/%@",skinString , imageName];
    
    UIImage *image = [UIImage imageNamed:pathName];
    
    return image;
}


//baocun
+ (void)saveSkin:(NSString *)skin{
    _skin = skin;
    
    //归档
    [[NSUserDefaults standardUserDefaults] setValue:skin forKey:@"skinType"];
}
@end
