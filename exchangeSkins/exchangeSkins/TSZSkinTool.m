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

//sh
+ (UIColor *)loadColor:(NSString *)key{
    
    //1、获取plist 路径
    NSString *plistName = [NSString stringWithFormat:@"skin/%@/color.plist",_skin];
    
    //2、获取 plist 文件的 路径
    NSString *path = [[NSBundle mainBundle] pathForResource:plistName ofType:nil];
    
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    
    NSString *result = dict[key];
    
    NSArray *allColor = [result componentsSeparatedByString:@","];
    
    CGFloat r = [allColor[0] integerValue]/255.0;
    CGFloat g = [allColor[1] integerValue]/255.0;
    CGFloat b = [allColor[2] integerValue]/255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}




@end
