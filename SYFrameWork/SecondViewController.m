//
//  SecondViewController.m
//  SYFrameWork
//
//  Created by 王声远 on 17/3/10.
//  Copyright © 2017年 王声远. All rights reserved.
//

#import "SecondViewController.h"
#import "SYUIFrameworkHeader.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(40, 100, 300, 60)];
    view.backgroundColor = [UIColor grayColor];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click)];
    [view addGestureRecognizer:tap];
    [self.view addSubview:view];
    
    
}

- (void)click {
    //alert使用
    Sheet.title(@"这里标题").message(@"这里内容").cancelAction(@"取消",^(){
        
        [self hidenTabBar:YES];
        
    }).addAction(@"Action",^(){
        
        [self hidenTabBar:NO];
        
    }).show(self);
    
}


@end
