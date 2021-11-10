//
//  MineViewController.m
//  OCHub
//
//  Created by liaoya on 2021/11/9.
//

#import "MineViewController.h"
#import <MXParallaxHeader/MXScrollView.h>
#import "MineViewReactor.h"
#import "MineParallaxView.h"

@interface MineViewController ()
@property (nonatomic, strong, readwrite) MineViewReactor *reactor;
@property (nonatomic, strong) MineParallaxView *parallaxView;

@end

@implementation MineViewController
@dynamic reactor;

- (instancetype)initWithReactor:(OCFViewReactor *)reactor navigator:(OCFNavigator *)navigator {
    if (self = [super initWithReactor:reactor navigator:navigator]) {
        self.hidesBottomBarWhenPushed = NO;
        self.tabBarItem.title = R.string.localizable.mine;
        self.tabBarItem.image = [R.image.icTabbarMine imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        self.tabBarItem.selectedImage = self.tabBarItem.image;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.collectionView.parallaxHeader.view = self.parallaxView;
    self.collectionView.parallaxHeader.height = self.parallaxView.height;
    self.collectionView.parallaxHeader.minimumHeight = self.parallaxView.height;
    self.collectionView.parallaxHeader.mode = MXParallaxHeaderModeFill;
    [self.parallaxView.widthAnchor constraintEqualToAnchor:self.collectionView.widthAnchor].active = YES;
}

#pragma mark - Property
- (MineParallaxView *)parallaxView {
    if (!_parallaxView) {
        MineParallaxView *view = [[MineParallaxView alloc] init];
        view.translatesAutoresizingMaskIntoConstraints = NO;
        [view sizeToFit];
        _parallaxView = view;
    }
    return _parallaxView;
}

@end
