//
//  Mine.m
//  OCHub
//
//  Created by liaoya on 2021/11/9.
//

#import "Mine.h"

@interface Mine ()

@end

@implementation Mine

- (BOOL)validate:(NSError *__autoreleasing *)error {
    NSInteger type = self.id.integerValue;
    if (type == PortalTypeWebsite) {
        self.target = UIApplication.sharedApplication.ocf_baseWebUrlString;
    } else if (type == PortalTypeAbout) {
        self.target = OCFURLWithPattern(kPatternAbout).absoluteString;
    }
    return YES;
}

@end
