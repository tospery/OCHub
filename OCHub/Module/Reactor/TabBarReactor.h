//
//  TabBarReactor.h
//  OCHub
//
//  Created by liaoya on 2021/11/10.
//

#import <OCFrame/OCFrame.h>
#import "TrendingViewReactor.h"
#import "MineViewReactor.h"

@interface TabBarReactor : OCFTabBarReactor
@property (nonatomic, strong, readonly) TrendingViewReactor *trendingViewReactor;
@property (nonatomic, strong, readonly) MineViewReactor *mineViewReactor;

@end

