//
//  HYZTrackList.h
//  AOPTrack
//
//  Created by HChong on 2017/2/24.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const HYZViewController1SimpleButtonClick = @"HYZViewController1SimpleButtonClick";
static NSString *const HYZViewController1BlockButtonClick = @"HYZViewController1BlockButtonClick";
static NSString *const HYZViewController1ComplexButtonClick = @"HYZViewController1ComplexButtonClick";
static NSString *const HYZViewController2BlockEvent = @"HYZViewController2BlockEvent";
static NSString *const HYZViewController3ComplexEventTrack = @"HYZViewController3ComplexEventTrack";

static NSString * const kClassName    = @"className";//埋点的类名
static NSString * const kHookFunction = @"functionName";//类中需要hook的方法名
static NSString * const kEventType    = @"eventName";//埋点类型
static NSString * const kIsLightEvent = @"isLightEvent";//bool值，简单埋点和复杂埋点，简单->点击就埋点，没有逻辑判断
static NSString * const kHandlerBlock = @"handlerBlock";//复杂埋点单独处理block名称

@interface HYZTrackList : NSObject

+ (NSArray *)trackList;
@end
