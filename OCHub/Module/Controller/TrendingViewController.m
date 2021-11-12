//
//  TrendingViewController.m
//  OCHub
//
//  Created by liaoya on 2021/11/9.
//

#import "TrendingViewController.h"
#import "TrendingViewReactor.h"

@interface TrendingViewController ()
@property (nonatomic, strong, readwrite) TrendingViewReactor *reactor;

@end

@implementation TrendingViewController
@dynamic reactor;

- (instancetype)initWithReactor:(OCFViewReactor *)reactor navigator:(OCFNavigator *)navigator {
    if (self = [super initWithReactor:reactor navigator:navigator]) {
        self.hidesBottomBarWhenPushed = NO;
        self.tabBarItem.title = R.string.localizable.trending;
        self.tabBarItem.image = [R.image.icTabbarTrending imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        self.tabBarItem.selectedImage = self.tabBarItem.image;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // self.view.backgroundColor = [UIColor qmui_randomColor];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
