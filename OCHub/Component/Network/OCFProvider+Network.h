//
//  OCFProvider+Network.h
//  OCHub
//
//  Created by liaoya on 2021/11/15.
//

#import <OCFrame/OCFrame.h>
#import "OCHubSessionManager.h"

@interface OCFProvider (Network)
@property(nonatomic, strong) OCHubSessionManager *ochub;

- (NSDictionary *)commonQueries;

@end
