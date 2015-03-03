//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by 朱正晶 on 15-2-28.
//  Copyright (c) 2015年 China. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@interface BNRHypnosisViewController()<UITextFieldDelegate>
@property (nonatomic, strong)UITextField *textField;
@end

@implementation BNRHypnosisViewController

// 使用代码的方式设置视图控制器的view属性
- (void)loadView
{
    //UIView
    //UIWindow
    // 先获取主屏幕的bounds，然后赋值给view，否则在下面的
    // viewDidLoad方法中，frame的值为0
    CGRect frame = [UIScreen mainScreen].bounds;
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] initWithFrame:frame];
    
    CGRect textFieldRect = CGRectMake(40, 70, 240, 30);
    _textField = [[UITextField alloc] initWithFrame:textFieldRect];
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    _textField.placeholder = @"Hypnotize me";
    _textField.returnKeyType = UIReturnKeyDone;
    _textField.autocorrectionType = NO;
    _textField.autocapitalizationType = UITextAutocapitalizationTypeAllCharacters;
    _textField.delegate = self;
    [backgroundView addSubview:_textField];
    
    self.view = backgroundView;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"textField = %@", textField.text);
    [_textField resignFirstResponder];
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
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
