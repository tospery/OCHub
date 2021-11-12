//
//  UIApplication+Addition.m
//  OCHub
//
//  Created by liaoya on 2021/11/11.
//

#import "UIApplication+Addition.h"

@implementation UIApplication (Addition)
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ExchangeImplementations(self.class, @selector(ocf_baseWebUrlString), @selector(my_ocf_baseWebUrlString));
    });
}

- (NSString *)my_ocf_baseWebUrlString {
    return @"https://github.com/tospery/OCFrame";
}

@end
