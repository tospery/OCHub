//
//  UIView+Addition.h
//  OCHub
//
//  Created by liaoya on 2021/10/29.
//

#import <UIKit/UIKit.h>

@interface UIView (Addition)
@property(nonatomic, assign) CGFloat top;
@property(nonatomic, assign) CGFloat left;
@property(nonatomic, assign) CGFloat bottom;
@property(nonatomic, assign) CGFloat right;
@property(nonatomic, assign) CGFloat width;
@property(nonatomic, assign) CGFloat height;
@property(nonatomic, assign) CGFloat centerX;
@property(nonatomic, assign) CGFloat centerY;
@property(nonatomic, assign) CGSize size;
@property(nonatomic, assign) CGFloat extendToTop;
@property(nonatomic, assign) CGFloat extendToLeft;
@property(nonatomic, assign) CGFloat extendToBottom;
@property(nonatomic, assign) CGFloat extendToRight;
@property(nonatomic, assign, readonly) CGFloat leftWhenCenter;
@property(nonatomic, assign, readonly) CGFloat topWhenCenter;

@end
