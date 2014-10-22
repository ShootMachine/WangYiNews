//
//  AppDelegate.h
//  Demo
//
//  Created by 林柏参 on 14/10/22.
//  Copyright (c) 2014年 林柏参. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,RESideMenuDelegate>
{
    RESideMenu *_sideMenuViewController;
}
@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,strong)RESideMenu *sideMenuViewController;

@end
