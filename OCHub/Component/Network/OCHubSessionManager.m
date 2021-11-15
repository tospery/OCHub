//
//  OCHubSessionManager.m
//  OCHub
//
//  Created by liaoya on 2021/11/15.
//

#import "OCHubSessionManager.h"
#import "BaseResponse.h"

@implementation OCHubSessionManager
+ (NSDictionary *)modelClassesByResourcePath {
    return @{
        kOCHubPathConfiguration: Configuration.class
    };
}

+ (NSDictionary *)responseClassesByResourcePath {
    return @{
        @"**": BaseResponse.class
    };
}

@end
