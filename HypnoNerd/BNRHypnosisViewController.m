//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by 朱正晶 on 15-2-28.
//  Copyright (c) 2015年 China. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@interface BNRHypnosisViewController()
@property (nonatomic, strong) UISegmentedControl *segmentedColorControl;
@property (nonatomic, strong) BNRHypnosisView *backgroundView;
@end

@implementation BNRHypnosisViewController

// 使用代码的方式设置视图控制器的view属性
- (void)loadView
{
    [super loadView];
    _backgroundView = [[BNRHypnosisView alloc] init];
    self.view = _backgroundView;
}

// 此方法中，视图view的frame大小正常
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

// 这个方法中，视图view的frame为什么还为空？？？
- (void)viewDidLoad
{
    [super viewDidLoad];
    // TODO:为什么view的frame属性还是0
    //NSLog(@"self = %@", self.view);

    _segmentedColorControl = [[UISegmentedControl alloc] initWithItems:@[@"红",
                                                                         @"绿",
                                                                         @"蓝"]];
    // 这里的位置写死了，等以后解决上面的BUG和学会了自动布局再来完善
    _segmentedColorControl.frame = CGRectMake(0, 0, 150, 30);
    _segmentedColorControl.center = CGPointMake(160, 400);
    // UISegmentedControlNoSegment
    _segmentedColorControl.selectedSegmentIndex = 0;
    
    [_segmentedColorControl addTarget:self action:@selector(colorChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_segmentedColorControl];
}

- (void)colorChanged:(UISegmentedControl*)sender
{
    NSLog(@"colorChanged, id = %d", sender.selectedSegmentIndex);
    switch (sender.selectedSegmentIndex) {
        case 0:
            // red
            [_backgroundView setCircleColor:[UIColor redColor]];
            break;
        case 1:
            // green
            [_backgroundView setCircleColor:[UIColor greenColor]];
            break;
        case 2:
            [_backgroundView setCircleColor:[UIColor blueColor]];
            break;
        default:
            break;
    }
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
