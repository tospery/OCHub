//
//  MineParallaxView.m
//  OCHub
//
//  Created by liaoya on 2021/11/10.
//

#import "MineParallaxView.h"

@interface MineParallaxView ()

@end

@implementation MineParallaxView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // self.backgroundColor = UIColor.qmui_randomColor;
    }
    return self;
}

- (CGSize)intrinsicContentSize {
    CGFloat height = OCFMetric(200);
    height += StatusBarHeightConstant;
    return CGSizeMake(DEVICE_WIDTH, height);
}

@end
