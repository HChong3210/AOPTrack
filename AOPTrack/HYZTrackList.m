//
//  HYZTrackList.m
//  AOPTrack
//
//  Created by HChong on 2017/2/24.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "HYZTrackList.h"

@implementation HYZTrackList

+ (NSArray *)trackList {
    NSArray *trackList = @[
  //=======================================简单埋点==========================================
                           //HYZViewController1简单埋点点击事件
                           @{kClassName:@"HYZViewController1",
                             kHookFunction:@"simpleTrack:para2:",
                             kEventType:HYZViewController1SimpleButtonClick,
                             kIsLightEvent:@(YES)},
                           //HYZViewController1复杂埋点点击事件
                           @{kClassName:@"HYZViewController1",
                             kHookFunction:@"blockButtonAction:",
                             kEventType:HYZViewController1BlockButtonClick,
                             kIsLightEvent:@(YES)},
                           //HYZViewController1block埋点点击事件
                           @{kClassName:@"HYZViewController1",
                             kHookFunction:@"complexButtonAction:",
                             kEventType:HYZViewController1ComplexButtonClick,
                             kIsLightEvent:@(YES)},
                           
//=======================================复杂埋点==========================================
                           @{kClassName:@"HYZViewController3",
                             kHookFunction:@"trackWithTag:",
                             kHandlerBlock:@"HYZViewController3TrackHandleBlock",
                             kIsLightEvent:@(NO)}];
    return trackList;
}

@end
