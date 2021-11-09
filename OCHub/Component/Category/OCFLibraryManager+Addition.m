//
//  OCFLibraryManager+Addition.m
//  OCHub
//
//  Created by liaoya on 2021/11/8.
//

#import "OCFLibraryManager+Addition.h"

@implementation OCFLibraryManager (Addition)
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ExchangeImplementations(self.class, @selector(setup), @selector(my_setup));
    });
}

- (void)my_setup {
    [self my_setup];
}


@end
