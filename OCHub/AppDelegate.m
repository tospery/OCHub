//
//  AppDelegate.m
//  OCHub
//
//  Created by liaoya on 2021/11/9.
//

#import "AppDelegate.h"
#import "AppDependency.h"

@interface AppDelegate ()
@property (nonatomic, strong) AppDependency *dependency;

@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self.dependency entryDidFinishLaunchingWithOptions:launchOptions];
    [self.dependency initialScreen];
    [self.dependency leaveDidFinishLaunchingWithOptions:launchOptions];
    return YES;
}

#pragma mark - Status
- (void)applicationWillResignActive:(UIApplication *)application {
    [self.dependency applicationWillResignActive:application];
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [self.dependency applicationDidEnterBackground:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [self.dependency applicationWillEnterForeground:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [self.dependency applicationDidBecomeActive:application];
}

- (void)applicationWillTerminate:(UIApplication *)application {
    [self.dependency applicationWillTerminate:application];
}

#pragma mark - URL
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
    return [self.dependency application:application openURL:url options:options];
}

#pragma mark - Property
- (UIWindow *)window {
    if (!_window) {
        UIWindow *window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
        window.backgroundColor = UIColor.whiteColor;
        _window = window;
    }
    return _window;
}

- (AppDependency *)dependency {
    if (!_dependency) {
        AppDependency *dependency = AppDependency.sharedInstance;
        dependency.window = self.window;
        _dependency = dependency;
    }
    return _dependency;
}


@end
