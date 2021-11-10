//
//  TabBarReactor.m
//  OCHub
//
//  Created by liaoya on 2021/11/10.
//

#import "TabBarReactor.h"

@interface TabBarReactor ()
@property (nonatomic, strong, readwrite) TrendingViewReactor *trendingViewReactor;
@property (nonatomic, strong, readwrite) MineViewReactor *mineViewReactor;

@end

@implementation TabBarReactor

- (void)didInitialize {
    [super didInitialize];
    self.trendingViewReactor = [[TrendingViewReactor alloc] initWithParameters:nil];
    self.mineViewReactor = [[MineViewReactor alloc] initWithParameters:nil];
}

@end
