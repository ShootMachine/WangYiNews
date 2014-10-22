//
//  NEWSViewController.m
//  hotNews
//
//  Created by 陈志明 on 14-7-25.
//  Copyright (c) 2014年 heima.iOS. All rights reserved.
//

#import "NEWSMainViewController.h"
#import "GuGuSegmentNaviViewController.h"
#import "TestTableViewController.h"

#define NEWSCOVERTAG 100000

@interface NEWSMainViewController ()

@property (nonatomic, strong) UIViewController *showingViewController;

@property (nonatomic,strong)TestTableViewController *sb;
@property (nonatomic,strong)UIViewController *sb1;
@property (nonatomic,strong)UIViewController *sb2;

@property (nonatomic, weak) UIView *leftMenuView;

@end

@implementation NEWSMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //设置新闻中间的控制器
    [self setupNewsVc];

    if ([[[UIDevice currentDevice] systemVersion] doubleValue] >= 7.0) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
}


#pragma mark - 添加左边菜单每个按钮对应着控制器
- (void)setupNewsVc
{
    
    self.title = @"每日Q游戏盒子";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"左边" style:UIBarButtonItemStyleBordered target:self action:@selector(presentLeftMenuViewController:)];
    
    //1、定义导航栏的标题
    NSString *title = @"测试Demo";
    
    //2、定义中间控制器的标题数组
	
    NSArray *titleArray = [NSArray arrayWithObjects:@"       首页       ",@"      分类         ",@"      玩过      ",nil];

     NSMutableArray *controllerArray = [NSMutableArray arrayWithCapacity:titleArray.count];
    
    //3、定义中间控制器的数组
    if (_sb == nil) {
        _sb = [[TestTableViewController alloc] init];
    }
    [controllerArray addObject:_sb];
    
    if (_sb1 == nil) {
        _sb1 = [[UIViewController alloc] init];
    }
    [controllerArray addObject:_sb1];
    
    if (_sb2 == nil) {
        _sb2 = [[UIViewController alloc] init];
    }
    [controllerArray addObject:_sb2];
    
    [self addCenterControllerWithTitle:title AndhTitleArray:titleArray controllerArray:controllerArray];
}

#pragma mark - 添加控制器的私有方法
- (void)addCenterControllerWithTitle:(NSString *)title AndhTitleArray:(NSArray *)titleArray controllerArray:(NSArray *)controllerArray
{
    GuGuSegmentNaviViewController *vc = [[ GuGuSegmentNaviViewController alloc]initWithItems:titleArray andControllers:controllerArray];
    [self.view addSubview:vc.view];
    [self addChildViewController:vc];
}

@end
