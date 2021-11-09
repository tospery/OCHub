//
//  OCFLibraryManager+Addition.m
//  OCHub
//
//  Created by liaoya on 2021/11/8.
//

#import "OCFLibraryManager+Addition.h"
#import <ATAuthSDK/ATAuthSDK.h>

@implementation OCFLibraryManager (Addition)
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ExchangeImplementations(self.class, @selector(setup), @selector(my_setup));
    });
}

- (void)my_setup {
    [self my_setup];
    [self setupATAuthSDK];
}

- (void)setupATAuthSDK {
    [TXCommonHandler.sharedInstance setAuthSDKInfo:kAPPSecretATAuth complete:^(NSDictionary * _Nonnull resultDic) {
        if ([OCFStrMember(resultDic, @"resultCode", nil) isEqualToString:PNSCodeSuccess]) {
            OCFLogDebug(kOCFLogTagLibrary, @"阿里云号码认证初始化成功: %@", [TXCommonHandler.sharedInstance getVersion]);
        } else {
            OCFLogDebug(kOCFLogTagLibrary, @"阿里云号码认证初始化失败: %@", resultDic);
        }
    }];
}


@end
