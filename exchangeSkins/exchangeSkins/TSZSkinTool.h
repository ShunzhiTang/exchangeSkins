//
//  TSZSkinTool.h
//  exchangeSkins
//
//  Created by Tsz on 15/11/7.
//  Copyright © 2015年 Tsz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TSZSkinTool : UIView

/**
 *  加载当前皮肤样式下的素材
 *
 *  @param imageName 名片名称
 *
 *  @return 返回的图片
 */
+ (UIImage *)loadImage:(NSString *)imageName;

/**
 *  供设置界面用得  保存最新的皮肤样式
 */
+ (void)saveSkin:(NSString *)skin;
/**
 *  根据当前的皮肤样式  以及  key  获取对应的颜色
 *
 *  @param key 控件的某个属性的(text  bg title)名称  two_label_text
 *
 *  @return 返回的图片
 */
+ (UIColor *)loadColor:(NSString *)key;

@end
