//
//  HYZViewController2.h
//  AOPTrack
//
//  Created by HChong on 2017/2/24.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^OddNumberBlock)(id obj);
typedef void(^EvenNumberBlock)(id obj);

@interface HYZViewController2 : UIViewController

- (void)arcNumberWithOdd:(OddNumberBlock)oddNumber even:(EvenNumberBlock)evenNumber;
@end
