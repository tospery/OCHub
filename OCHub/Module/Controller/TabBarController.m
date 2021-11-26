//
//  TabBarController.m
//  OCHub
//
//  Created by liaoya on 2021/11/10.
//

#import "TabBarController.h"
#import "TabBarReactor.h"
#import "TrendingViewController.h"
#import "MineViewController.h"

@interface TabBarController ()
@property (nonatomic, strong, readwrite) TabBarReactor *reactor;

@end

@implementation TabBarController
@dynamic reactor;

- (void)setupChildren {
    [super setupChildren];
    TrendingViewController *trendingViewController = [[TrendingViewController alloc] initWithReactor:self.reactor.trendingViewReactor navigator:self.navigator];
    MineViewController *mineViewController = [[MineViewController alloc] initWithReactor:self.reactor.mineViewReactor navigator:self.navigator];
    self.viewControllers = [@[trendingViewController, mineViewController].rac_sequence map:^id(UIViewController *viewController) {
        return [[NavigationController alloc] initWithRootViewController:viewController];
    }].array;
    [OCFAppDependency.sharedInstance.navigator pushNavigationController:self.viewControllers.firstObject];
    self.tabBar.tintColor = UIColor.ocf_primary;
    self.tabBar.unselectedItemTintColor = UIColor.ocf_title;
}


@end
