//
//  MineParallaxView.m
//  OCHub
//
//  Created by liaoya on 2021/11/10.
//

#import "MineParallaxView.h"
#import "MineParallaxReactor.h"

@interface MineParallaxView ()
@property (nonatomic, strong, readwrite) MineParallaxReactor *reactor;
@property (nonatomic, strong) UIButton *userButton;

@end

@implementation MineParallaxView
@dynamic reactor;

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.userInteractionEnabled = YES;
        // YJX_TODO self.theme_backgroundColor = ThemeColorPicker.primary;
        [self addSubview:self.userButton];
    }
    return self;
}

#pragma mark - Property
- (UIButton *)userButton {
    if (!_userButton) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:R.image.icUserAvatar forState:UIControlStateNormal];
        [button sizeToFit];
        _userButton = button;
    }
    return _userButton;
}

- (CGSize)intrinsicContentSize {
    CGFloat height = OCFMetric(200);
    height += StatusBarHeightConstant;
    return CGSizeMake(DEVICE_WIDTH, height);
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.userButton.left = self.userButton.leftWhenCenter;
    self.userButton.top = flat(self.userButton.topWhenCenter * 1.4);
}

- (void)bind:(MineParallaxReactor *)reactor {
    self.userButton.rac_command = reactor.userCommand;
    [self setNeedsLayout];
    [self layoutIfNeeded];
}

@end
