//
//  ViewController.m
//  LBTextFieldDemo
//
//  Created by 刘彬 on 2019/9/24.
//  Copyright © 2019 刘彬. All rights reserved.
//

#import "ViewController.h"
#import "LBUnderlineButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"LBUnderlineButton";
    LBUnderlineButton *btn = [[LBUnderlineButton alloc] initWithFrame:CGRectMake((CGRectGetWidth(self.view.frame)-80)/2, 200, 80, 60)];
//    btn.lineColor = [UIColor cyanColor];
    btn.lineHeight = 2;
    btn.lineSpacing = 5;
    [btn setTitleColor:[UIColor magentaColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
    [btn setTitle:@"下划线" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)btnAction:(LBUnderlineButton *)sender{
    sender.selected = !sender.selected;
}
@end
