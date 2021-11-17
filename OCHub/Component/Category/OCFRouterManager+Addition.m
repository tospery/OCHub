//
//  OCFRouterManager+Addition.m
//  OCHub
//
//  Created by liaoya on 2021/11/9.
//

#import "OCFRouterManager+Addition.h"
#import "GeneralViewReactor.h"
#import "WebViewReactor.h"

@implementation OCFRouterManager (Addition)
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ExchangeImplementations(self.class, @selector(setupWithProvider:navigator:), @selector(my_setupWithProvider:navigator:));
    });
}

- (void)my_setupWithProvider:(OCFProvider *)provider navigator:(OCFNavigator *)navigator {
    [self my_setupWithProvider:provider navigator:navigator];
    [JLRoutes.globalRoutes addRoute:kPatternAbout handler:[JLRRouteHandler handlerBlockForTargetClass:GeneralViewReactor.class completion:^BOOL(GeneralViewReactor *reactor) {
        return [navigator pushReactor:reactor animated:YES] != nil;
    }]];
}

@end
