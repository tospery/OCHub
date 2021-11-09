//
//  UIView+Addition.m
//  OCHub
//
//  Created by liaoya on 2021/10/29.
//

#import "UIView+Addition.h"

@implementation UIView (Addition)
- (CGFloat)top {
    return self.qmui_top;
}

- (void)setTop:(CGFloat)top {
    self.qmui_top = top;
}

- (CGFloat)left {
    return self.qmui_left;
}

- (void)setLeft:(CGFloat)left {
    self.qmui_left = left;
}

- (CGFloat)bottom {
    return self.qmui_bottom;
}

- (void)setBottom:(CGFloat)bottom {
    self.qmui_bottom = bottom;
}

- (CGFloat)right {
    return self.qmui_right;
}

- (void)setRight:(CGFloat)right {
    self.qmui_right = right;
}

- (CGFloat)width {
    return self.qmui_width;
}

- (void)setWidth:(CGFloat)width {
    self.qmui_width = width;
}

- (CGFloat)height {
    return self.qmui_height;
}

- (void)setHeight:(CGFloat)height {
    self.qmui_height = height;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(flat(centerX), self.center.y);
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, flat(centerY));
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGFloat)extendToTop {
    return self.qmui_extendToTop;
}

- (void)setExtendToTop:(CGFloat)extendToTop {
    self.qmui_extendToTop = extendToTop;
}

- (CGFloat)extendToLeft {
    return self.qmui_extendToLeft;
}

- (void)setExtendToLeft:(CGFloat)extendToLeft {
    self.qmui_extendToLeft = extendToLeft;
}

- (CGFloat)extendToBottom {
    return self.qmui_extendToBottom;
}

- (void)setExtendToBottom:(CGFloat)extendToBottom {
    self.qmui_extendToBottom = extendToBottom;
}

- (CGFloat)extendToRight {
    return self.qmui_extendToRight;
}

- (void)setExtendToRight:(CGFloat)extendToRight {
    self.qmui_extendToRight = extendToRight;
}

- (CGFloat)leftWhenCenter {
    return self.qmui_leftWhenCenterInSuperview;
}

- (CGFloat)topWhenCenter {
    return self.qmui_topWhenCenterInSuperview;
}

@end
