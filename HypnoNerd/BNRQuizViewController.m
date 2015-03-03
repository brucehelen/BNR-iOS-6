//
//  BNRQuizViewController.m
//  HypnoNerd
//
//  Created by 朱正晶 on 15-3-3.
//  Copyright (c) 2015年 China. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController()

@property (nonatomic, assign) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

- (void)viewDidAppear:(BOOL)animated
{
    self.questionLabel.text = self.questions[self.currentQuestionIndex];
    self.answerLabel.text = @"???";
}

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.questions = @[@"From what is cognac made?",
                           @"What is 7+7",
                           @"What is the captital of Vermont?"];
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
        
        // 在TabBar上显示图标
        self.tabBarItem.title = @"Quiz";
        self.tabBarItem.image = [UIImage imageNamed:@"Hypno.png"];
    }
    
    return self;
}


- (IBAction)showQuestion:(id)sender
{
    if (++self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    self.questionLabel.text = self.questions[self.currentQuestionIndex];
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender
{
    self.answerLabel.text = self.answers[self.currentQuestionIndex];
}


@end
