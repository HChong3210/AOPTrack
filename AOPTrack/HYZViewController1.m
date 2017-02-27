//
//  HYZViewController1.m
//  AOPTrack
//
//  Created by HChong on 2017/2/24.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "HYZViewController1.h"
#import "HYZViewController2.h"
#import "HYZViewController3.h"

@interface HYZViewController1 ()

@end

@implementation HYZViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *blockButton = [UIButton buttonWithType:UIButtonTypeCustom];
    blockButton.frame = CGRectMake(100, 300, 100, 50);
    [blockButton addTarget:self action:@selector(blockButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [blockButton setTitle:@"block埋点" forState:UIControlStateNormal];
    blockButton.backgroundColor = [UIColor lightGrayColor];
    blockButton.titleLabel.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:blockButton];

    
    UIButton *complexButton = [UIButton buttonWithType:UIButtonTypeCustom];
    complexButton.frame = CGRectMake(100, 200, 100, 50);
    [complexButton addTarget:self action:@selector(complexButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [complexButton setTitle:@"complex埋点" forState:UIControlStateNormal];
    complexButton.backgroundColor = [UIColor lightGrayColor];
    complexButton.titleLabel.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:complexButton];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 50);
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"简单埋点" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    button.titleLabel.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonAction:(id)action {
    
}

- (void)blockButtonAction:(id)action {
    HYZViewController2 *vc2 = [[HYZViewController2 alloc] init];
    [self.navigationController pushViewController:vc2 animated:YES];
}

- (void)complexButtonAction:(id)action {
    HYZViewController3 *vc3 = [[HYZViewController3 alloc] init];
    [self.navigationController pushViewController:vc3 animated:YES];
}

@end
