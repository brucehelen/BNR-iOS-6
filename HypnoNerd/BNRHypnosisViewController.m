//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by 朱正晶 on 15-2-28.
//  Copyright (c) 2015年 China. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

// 使用代码的方式设置视图控制器的view属性
- (void)loadView
{
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    self.view = backgroundView;
}

// 此方法中，视图view的frame大小正常
- (void)viewWillAppear:(BOOL)animated
{
    UISegmentedControl *seg = [[UISegmentedControl alloc] initWithItems:@[@"red",
                                                                          @"green",
                                                                          @"blue"]];
    seg.center = CGPointMake(self.view.frame.size.width / 2.0, self.view.frame.size.height);
    [self.view addSubview:seg];
}

// 这个方法中，视图view的frame为什么还为空？？？
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"self = %@", self);
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = i;
    }
    return self;
}


@end
