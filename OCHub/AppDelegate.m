//
//  AppDelegate.m
//  OCHub
//
//  Created by 杨建祥 on 2020/6/8.
//  Copyright © 2020 杨建祥. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDependency.h"

@interface AppDelegate ()
@property (nonatomic, strong) AppDependency *dependency;

@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self.dependency entryDidFinishLaunchingWithOptions:launchOptions];
    [self.dependency initialScreen];
    [self.dependency leaveDidFinishLaunchingWithOptions:launchOptions];
    
    [self performSelector:@selector(test:) withObject:launchOptions afterDelay:3.0f];
    
    return YES;
}

- (void)test:(NSDictionary *)launchOptions {
}

@end
