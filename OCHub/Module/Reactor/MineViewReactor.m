//
//  MineViewReactor.m
//  OCHub
//
//  Created by liaoya on 2021/11/9.
//

#import "MineViewReactor.h"
#import "Mine.h"
#import "MineItem.h"

@interface MineViewReactor ()

@end

@implementation MineViewReactor

#pragma mark - Init
- (instancetype)initWithParameters:(NSDictionary *)parameters {
    if (self = [super initWithParameters:parameters]) {
        self.hidesNavigationBar = OCFBoolMember(parameters, OCFParameter.hidesNavigationBar, YES);
    }
    return self;
}

- (void)didInitialize {
    [super didInitialize];
    self.cellMapping = @{
        @"MineItem": @"MineCell"
    };
    @weakify(self)
    [self.selectCommand.executionSignals.switchToLatest subscribeNext:^(RACTuple *tuple) {
        @strongify(self)
//        BZMCollectionReactor *reactor = tuple.second;
//        if ([reactor isKindOfClass:SettingReactor.class]) {
//            SettingReactor *settingReactor = (SettingReactor *)reactor;
//            if (settingReactor.target) {
//                NSDictionary *parameters = settingReactor.model.title ? @{BZMParameter.title: settingReactor.model.title} : nil;
//                [self.navigate sendNext:RACTuplePack(settingReactor.target, parameters)];
//                return;
//            }
//            // YJX_TODO
//            // 1. 微信没有信息的时候，进行授权拿信息、并上报给后台
//        }
        OCFCollectionItem *item = tuple.second;
//        if ([item isKindOfClass:MineItem.class]) {
//            // YJX_TODO 添加target
//            // [self.navigate sendNext:RACTuplePack(OCFURLWithPattern(kPatternAbout), nil)];
//            [self.navigate sendNext:RACTuplePack(OCFURLWithStr(UIApplication.sharedApplication.ocf_baseWebUrlString), nil)];
//        } else {
//            // [self.navigate sendNext:RACTuplePack(OCFURLWithStr(UIApplication.sharedApplication.ocf_baseWebUrlString), nil)];
//        }
        [self.navigate sendNext:RACTuplePack(OCFURLWithStr(item.model.target), nil)];
    }];
}

#pragma mark - Method
- (id)fetchLocalData {
    return [Mine cachedArray];
}

- (RACSignal *)requestRemoteSignalWithPage:(NSInteger)page {
    return RACSignal.empty;
}

- (NSArray *)data2Source:(id)data {
    NSArray *models = nil;
    if ([data isKindOfClass:NSArray.class]) {
        models = (NSArray *)data;
    }
    NSArray *reactors = [models.rac_sequence map:^id(Mine *model) {
        return [[MineItem alloc] initWithModel:model];
    }].array;
    return [super data2Source:reactors];
}

@end
