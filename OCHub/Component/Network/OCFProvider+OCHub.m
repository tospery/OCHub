//
//  OCFProvider+OCHub.m
//  OCHub
//
//  Created by liaoya on 2021/11/15.
//

#import "OCFProvider+OCHub.h"
#import "OCHubSessionManager.h"

@implementation OCFProvider (OCHub)
- (RACSignal *)configurationSignal {
    return [self.ochub get:kOCHubPathConfiguration parameters:nil];
}

@end
