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
@property (nonatomic, strong, readwrite) MineParallaxReactor *parallaxReactor;

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
    self.parallaxReactor = [[MineParallaxReactor alloc] init];
    [self.parallaxReactor.userCommand.executionSignals.switchToLatest subscribe:self.navigate];
    self.cellMapping = @{
        @"MineItem": @"MineCell"
    };
    @weakify(self)
    [self.selectCommand.executionSignals.switchToLatest subscribeNext:^(RACTuple *tuple) {
        @strongify(self)
        OCFCollectionItem *item = tuple.second;
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
