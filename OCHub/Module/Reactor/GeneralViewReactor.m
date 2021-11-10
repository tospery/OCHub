//
//  GeneralViewReactor.m
//  OCHub
//
//  Created by liaoya on 2021/11/10.
//

#import "GeneralViewReactor.h"

@interface GeneralViewReactor ()

@end

@implementation GeneralViewReactor

- (instancetype)initWithParameters:(NSDictionary *)parameters {
    if (self = [super initWithParameters:parameters]) {
        self.title = OCFStrMember(parameters, OCFParameter.title, R.string.localizable.about);
    }
    return self;
}

@end
