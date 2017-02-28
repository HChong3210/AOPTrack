//
//  HYZViewController2.m
//  AOPTrack
//
//  Created by HChong on 2017/2/24.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "HYZViewController2.h"

@interface HYZViewController2 ()

@end

@implementation HYZViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self trackTest];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)trackTest {
    [self arcNumberWithOdd:^(id obj) {
        
    } even:^(id obj) {
        
    }];
}

- (void)arcNumberWithOdd:(OddNumberBlock)oddNumber even:(EvenNumberBlock)evenNumber {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSInteger number = arc4random() % 10;
        NSString *numberString = [NSString stringWithFormat:@"%ld", number];
        if (number % 2 == 0) {
            oddNumber(numberString);
        } else {
            evenNumber(numberString);
        }
    });
}

@end
