//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by 朱正晶 on 15/2/28.
//  Copyright (c) 2015年 China. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end


@implementation BNRReminderViewController

// 只在第一次加载视图时调用
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"BNRReminderViewController viewDidLoad self = %@", self.view);
}

// 每次显示视图时都会调用
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    NSLog(@"BNRReminderViewController initWithNibName");
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Reminder";
        self.tabBarItem.image = [UIImage imageNamed:@"Time.png"];
    }
    
    return self;
}


- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);

    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hypnotize me!";
    note.fireDate = date;

    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}


@end
