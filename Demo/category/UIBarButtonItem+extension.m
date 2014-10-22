//
//  UIBarButtonItem+extension.m
//  微博项目
//
//  Created by 陈志明 on 14-7-4.
//  Copyright (c) 2014年 chenzm. All rights reserved.
//

#import "UIBarButtonItem+extension.h"

@implementation UIBarButtonItem (extension)

+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName target:(id)target selecter:(SEL)selecter
{
    UIButton *btn = [[UIButton alloc] init];

    [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
   // [btn setBackgroundImage:[UIImage imageNamed:hightImageName] forState:UIControlStateHighlighted];
    btn.size = btn.currentBackgroundImage.size;
    [btn addTarget:target action:selecter forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return barButton;
    
}

+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName Title:(NSString *)title target:(id)target selecter:(SEL)selecter
{
    UIButton *btn = [[UIButton alloc] init];
    
    [btn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:10];
    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    btn.contentEdgeInsets = UIEdgeInsetsMake(0, 4, 0, 0);
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTintColor:[UIColor redColor]];
    btn.size = btn.currentBackgroundImage.size;
    [btn addTarget:target action:selecter forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] initWithCustomView:btn];
    return barButton;
    
}

@end
