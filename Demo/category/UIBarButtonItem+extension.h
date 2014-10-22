//
//  UIBarButtonItem+extension.h
//  微博项目
//
//  Created by 陈志明 on 14-7-4.
//  Copyright (c) 2014年 chenzm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (extension)


+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName target:(id)target selecter:(SEL)selecter;

+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName Title:(NSString *)title target:(id)target selecter:(SEL)selecter;
@end
