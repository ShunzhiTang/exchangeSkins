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


@end
