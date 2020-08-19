//
//  TWViewController.m
//  TWGCDTimer
//
//  Created by wangxufeng092@163.com on 08/19/2020.
//  Copyright (c) 2020 wangxufeng092@163.com. All rights reserved.
//

#import "TWViewController.h"
#import "TWGCDTimer.h"

@interface TWViewController ()

@property (nonatomic, assign) NSInteger timeout;

@property (nonatomic, strong) NSString *timerTask;

@end

@implementation TWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timeout = 30;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self demo1];
}

- (void)demo {
    self.timerTask = [TWGCDTimer execTaskBlock:^{
        
        if(self.timeout <= 0){
            /// 取消任务
            [TWGCDTimer cancelTask:self.timerTask];
            NSLog(@"timer停止计时");
            return;
        }
        
        if(self.timeout > 0){
            self.timeout--;
            NSLog(@"%zd", self.timeout);
        }
    } start:0 interval:1 repeats:YES async:NO];
}

- (void)demo1 {
    self.timerTask = [TWGCDTimer execTaskTarget:self selector:@selector(timeAction) start:0 interval:1 repeats:YES async:NO];
}

- (void)timeAction {
    if(self.timeout <= 0){
        /// 取消任务
        [TWGCDTimer cancelTask:self.timerTask];
        NSLog(@"timer停止计时");
        return;
    }
    
    if(self.timeout > 0){
        self.timeout--;
        NSLog(@"%zd", self.timeout);
    }
}

@end
