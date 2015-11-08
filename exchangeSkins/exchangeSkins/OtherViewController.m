//
//  OtherViewController.m
//  exchangeSkins
//
//  Created by Tsz on 15/11/7.
//  Copyright © 2015年 Tsz. All rights reserved.
//

#import "OtherViewController.h"
#import "TSZSkinTool.h"

@interface OtherViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageRect;

@end

@implementation OtherViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.imageRect.image = [TSZSkinTool loadImage:@"face"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
