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
    // 先获取主屏幕的bounds，然后赋值给view，否则在下面的
    // viewDidLoad方法中，frame的值为0
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    
    self.view = backgroundView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"BNRHypnosisViewController viewDidLoad, self.view = %@", self.view);
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSLog(@"BNRHypnosisViewController initWithNibName");
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = i;
    }

    return self;
}


@end
