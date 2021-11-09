//
//  OCFRouterManager+Addition.m
//  OCHub
//
//  Created by liaoya on 2021/11/9.
//

#import "OCFRouterManager+Addition.h"

@implementation OCFRouterManager (Addition)
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ExchangeImplementations(self.class, @selector(setupWithProvider:navigator:), @selector(my_setupWithProvider:navigator:));
    });
}

- (void)my_setupWithProvider:(OCFProvider *)provider navigator:(OCFNavigator *)navigator {
    [self my_setupWithProvider:provider navigator:navigator];
    
//    handler = [JLRRouteHandler handlerBlockForTargetClass:MessageCenterViewReactor.class completion:^BOOL(BZMViewReactor *reactor) {
//        @strongify(self)
//        return [self.navigator pushReactor:reactor animated:YES] != nil;
//    }];
//    [JLRoutes.globalRoutes addRoute:kPatternMessageCenter handler:handler];
    
//    JLRoutes.globalRoutes[@"/user/view/:userID"] = ^BOOL(NSDictionary *parameters) {
//      // ...
//    };
//    [JLRoutes.globalRoutes addRoute:<#(nonnull NSString *)#> handler:^BOOL(NSDictionary<NSString *,id> * _Nonnull parameters) {
//        <#code#>
//    }]
    
    // [JLRoutes.globalRoutes addRoute:@"about" handler:[JLRRouteHandler handlerBlockForTargetClass:<#(nonnull Class)#> completion:<#^BOOL(id<JLRRouteHandlerTarget>  _Nonnull createdObject)completionHandler#>]]
}

@end
