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
    [ThemeManager setThemeWithJsonInMainBundle:@"theme_default"];
    [super entryDidFinishLaunchingWithOptions:launchOptions];
}

- (void)leaveDidFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [super leaveDidFinishLaunchingWithOptions:launchOptions];
    [self performSelector:@selector(test:) withObject:launchOptions afterDelay:3.0f];
}

- (void)test:(NSDictionary *)launchOptions {
    OCFLogDebug(kOCFLogTagTest, @"测试开始");
    OCFLogDebug(kOCFLogTagTest, @"%@", UIApplication.sharedApplication.ocf_baseWebUrlString);
    OCFLogDebug(kOCFLogTagTest, @"测试结束");
}

@end
