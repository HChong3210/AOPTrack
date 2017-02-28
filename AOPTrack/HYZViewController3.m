//
//  HYZViewController3.m
//  AOPTrack
//
//  Created by HChong on 2017/2/24.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "HYZViewController3.h"

@interface HYZViewController3 ()

@end

@implementation HYZViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 200, 100, 50);
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"确定" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor lightGrayColor];
    button.titleLabel.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:button];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonAction:(id)action {
    [self trackWithTag:arc4random() % 4 + 1];
}

//不同的tag埋点的事件不同, 可以使用简单的埋点(每个case里面写一个方法), 复杂埋点(使用block来hook方法名后面的参数)
//传参数的方式, 来hook参数名
//根据服务端某个返回值来响应不同的埋点事件
//埋点事件名称放在服务端返回的字段中
- (void)trackWithTag:(NSInteger)tag {
    switch (tag) {
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
        case 4:
            
            break;
            
        default:
            break;
    }
}


@end
