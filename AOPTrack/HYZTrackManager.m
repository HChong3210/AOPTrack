//
//  HYZTrackManager.m
//  AOPTrack
//
//  Created by HChong on 2017/2/24.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "HYZTrackManager.h"
#import "HYZTrackList.h"
#import "Aspects.h"

@implementation HYZTrackManager

+ (void)setup {
    [[HYZTrackList trackList] enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        BOOL isLightEvent = [obj[kIsLightEvent] boolValue];
        NSString *className = obj[kClassName];
        NSString *functionName = obj[kHookFunction];
        NSString *eventName = obj[kEventType];
        Class class = NSClassFromString(className);
        SEL selector = NSSelectorFromString(functionName);
        if (isLightEvent == YES) {
            [HYZTrackManager lightTrackTarget:class selector:selector functionName:functionName trackId:eventName];
        } else {
            
            [HYZTrackManager complexTrack];
        }
    }];
}

//简单埋点虽然可以拿到对应方法的参数, 但是如果需要把该参数传到埋点请求的网络事件中的话, 必须使用复杂埋点来处理
+ (void)lightTrackTarget:(Class)target selector:(SEL)selector functionName:(NSString *)functionName trackId:(NSString *)trackId {
    NSError *error;
    NSInteger functionParamCount = [[functionName componentsSeparatedByString:@":"] count] - 1;
    switch (functionParamCount) {
        case 0: {
            [target aspect_hookSelector:selector withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo){
                [HYZTrackManager trackRequestWithTrackId:trackId, nil];
            }error:&error];
        }
            break;
        case 1: {
            [target aspect_hookSelector:selector withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo, id p1){
                [HYZTrackManager trackRequestWithTrackId:trackId, p1, nil];
            }error:&error];
        }
            break;
        case 2: {
            [target aspect_hookSelector:selector withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo, id p1, id p2){
                [HYZTrackManager trackRequestWithTrackId:trackId, p1, p2, nil];
            }error:&error];
        }
            break;
        case 3: {
            [target aspect_hookSelector:selector withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo, id p1, id p2, id p3){
                [HYZTrackManager trackRequestWithTrackId:trackId, p1, p2, p3, nil];
            }error:&error];
        }
            break;
        case 4: {
            [target aspect_hookSelector:selector withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo, id p1, id p2, id p3, id p4){
                [HYZTrackManager trackRequestWithTrackId:trackId, p1, p2, p3, p4, nil];
            }error:&error];
        }
            break;
        default:
            break;
    }
}

+ (void)complexTrack {
    
}

+ (void)trackRequestWithTrackId:(NSString *)trackId, ... NS_REQUIRES_NIL_TERMINATION{
    // 定义一个指向个数可变的参数列表指针；
    va_list args;
    // 用于存放取出的参数
    NSString *arg;
    // 初始化变量刚定义的va_list变量，这个宏的第二个参数是第一个可变参数的前一个参数，是一个固定的参数
    va_start(args, trackId);
    // 遍历全部参数 va_arg返回可变的参数(a_arg的第二个参数是你要返回的参数的类型)
    while ((arg = va_arg(args, NSString *))) {
        NSLog(@"%@", arg);
    }
    // 清空参数列表，并置参数指针args无效
    va_end(args);
    NSLog(@"此处用来实现埋点事件记录%@的网络请求", trackId);
}

@end
