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
    TrendingViewController *trendingViewController = [[TrendingViewController alloc] initWithReactor:self.reactor.trendingViewReactor];
    MineViewController *mineViewController = [[MineViewController alloc] initWithReactor:self.reactor.mineViewReactor];
    self.viewControllers = [@[trendingViewController, mineViewController].rac_sequence map:^id(UIViewController *viewController) {
        return [[NavigationController alloc] initWithRootViewController:viewController];
    }].array;
    self.tabBar.theme_tintColor = ThemeColorPicker.primary;
    self.tabBar.theme_unselectedItemTintColor = ThemeColorPicker.title;
}


@end
