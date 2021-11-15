//
//  OCFProvider+Network.m
//  OCHub
//
//  Created by liaoya on 2021/11/15.
//

#import "OCFProvider+Network.h"

@implementation OCFProvider (Network)
QMUISynthesizeIdStrongProperty(ochub, setOchub)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ExchangeImplementations(self.class, @selector(didInitialize), @selector(my_didInitialize));
    });
}

- (void)my_didInitialize {
    [self my_didInitialize];
    self.ochub = [[OCHubSessionManager alloc] initWithBaseURL:OCFURLWithStr(UIApplication.sharedApplication.ocf_baseApiUrlString)];
}

- (NSDictionary *)commonQueries {
    return @{
        @"platform": UIDevice.currentDevice.model,
        @"version": UIApplication.sharedApplication.ocf_version
    };
}

@end
