//
//  TWGCDTimer.h
//  TWGCDTimer_Example
//
//  Created by Tilt on 2020/8/19.
//  Copyright © 2020 wangxufeng092@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TWGCDTimer : NSObject

///
/// 定时器  可以在block中执行任务
/// @param task 任务block
/// @param start 设置后开始计时时间
/// @param interval 调用时间间隔
/// @param repeats 是否重复
/// @param async 是否异步
/// @return 返回任务名
+ (NSString *)execTaskBlock:(void(^)(void))task
                      start:(NSTimeInterval)start
                   interval:(NSTimeInterval)interval
                    repeats:(BOOL)repeats
                      async:(BOOL)async;

///
/// 定时器  可以在指定的 方法中 中执行任务
/// @param target 任务对象
/// @param selector 任务回调方法
/// @param start 设置后开始计时时间
/// @param interval 调用时间间隔
/// @param repeats 是否重复
/// @param async 是否异步
/// @return 返回任务名
+ (NSString *)execTaskTarget:(id)target
                    selector:(SEL)selector
                       start:(NSTimeInterval)start
                    interval:(NSTimeInterval)interval
                     repeats:(BOOL)repeats
                       async:(BOOL)async;

/// 取消某个任务
/// @param name 任务名
+ (void)cancelTask:(NSString *)name;


@end

NS_ASSUME_NONNULL_END
