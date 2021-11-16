//
//  MineParallaxReactor.m
//  OCHub
//
//  Created by liaoya on 2021/11/16.
//

#import "MineParallaxReactor.h"

@interface MineParallaxReactor ()
@property (nonatomic, strong, readwrite) RACCommand *userCommand;

@end

@implementation MineParallaxReactor

- (void)didInitialize {
    [super didInitialize];
    self.userCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
        return [[RACSignal return:RACTuplePack(OCFURLWithPattern(kOCFPatternLogin), nil)] takeUntil:self.rac_willDeallocSignal];
    }];
}

@end
