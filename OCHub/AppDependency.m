//
//  AppDependency.m
//  OCHub
//
//  Created by liaoya on 2021/11/10.
//

#import "AppDependency.h"
#import "TabBarReactor.h"

@interface AppDependency ()

@end

@implementation AppDependency

- (void)initialScreen {
    TabBarReactor *tabBarReactor = [[TabBarReactor alloc] initWithParameters:nil];
    [self.navigator resetRootReactor:tabBarReactor];
}

- (void)entryDidFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [super entryDidFinishLaunchingWithOptions:launchOptions];
    [self updateConfiguration];
}

- (void)leaveDidFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [super leaveDidFinishLaunchingWithOptions:launchOptions];
    [self performSelector:@selector(test:) withObject:launchOptions afterDelay:3.0f];
}

- (void)test:(NSDictionary *)launchOptions {
    OCFLogDebug(kOCFLogTagTest, @"测试开始");
//    [[self.provider configurationSignal] subscribeNext:^(id x) {
//        NSLog(@"成功");
//        } error:^(NSError * error) {
//            NSLog(@"失败");
//        } completed:^{
//            NSLog(@"完成");
//        }];
    OCFLogDebug(kOCFLogTagTest, @"测试结束");
}

- (void)updateConfiguration {
    __block Configuration *configuration = Configuration.current;
    configuration.hasUpdated = NO;
    [configuration save];
    [[[self.provider configurationSignal] timeout:5 onScheduler:[RACScheduler scheduler]] subscribeNext:^(Configuration *new) {
        ;
        configuration = new;
        configuration.hasUpdated = YES;
        [configuration save];
    } error:^(NSError *error) {
        configuration.hasUpdated = YES;
        [configuration save];
    }];
}

@end
