#import <UIKit/UIKit.h>
@import Giotto;


NS_ASSUME_NONNULL_BEGIN

@interface RLocalizableStrings: NSObject
/**
key: "About"

Undefined: "关于"
*/
- (NSString*)about;
/**
key: "Cancel"

Undefined: "取消"
*/
- (NSString*)cancel;
/**
key: "Error.Empty.Message"

Undefined: "亲，当前无数据，请稍后重试"
*/
- (NSString*)errorEmptyMessage;
/**
key: "Error.Empty.Title"

Undefined: "无数据提示"
*/
- (NSString*)errorEmptyTitle;
/**
key: "Error.Network.Message"

Undefined: "亲，请检查一下网络后再试试吧"
*/
- (NSString*)errorNetworkMessage;
/**
key: "Error.Network.Title"

Undefined: "网络异常"
*/
- (NSString*)errorNetworkTitle;
/**
key: "Error.Retry.Title"

Undefined: "点击重新加载"
*/
- (NSString*)errorRetryTitle;
/**
key: "Error.Server.Message"

Undefined: "亲，数据异常，请稍后重试"
*/
- (NSString*)errorServerMessage;
/**
key: "Error.Server.Title"

Undefined: "数据错误"
*/
- (NSString*)errorServerTitle;
/**
key: "Mine"

Undefined: "我的"
*/
- (NSString*)mine;
/**
key: "No"

Undefined: "否"
*/
- (NSString*)no;
/**
key: "OK"

Undefined: "确定"
*/
- (NSString*)oK;
/**
key: "Pay Now"

Undefined: "立即充值"
*/
- (NSString*)payNow;
/**
key: "Router Plugins"

Undefined: "路由插件"
*/
- (NSString*)routerPlugins;
/**
key: "Sure"

Undefined: "确定"
*/
- (NSString*)sure;
/**
key: "Trending"

Undefined: "趋势"
*/
- (NSString*)trending;
/**
key: "Unknown"

Undefined: "未知"
*/
- (NSString*)unknown;
/**
key: "Yes"

Undefined: "是"
*/
- (NSString*)yes;
@end


@interface RStrings: NSObject
- (RLocalizableStrings*)localizable;
@end


@interface RImages: NSObject
- (UIImage*)appSlogan;
- (UIImage*)icPortalAbout;
- (UIImage*)appLogo;
- (UIImage*)icUserAvatar;
- (UIImage*)icTabbarTrending;
- (UIImage*)icTabbarMine;
- (UIImage*)icPortalWebsite;
@end


@interface RStyle: NSObject
@property (nonatomic, strong) NSString* identifier;
- (void)applyTo:(nullable id)object;
@end


@interface RConstants: NSObject
- (UIColor*)COLOR_BACKGROUND;
- (UIColor*)COLOR_BACKGROUND_BADGE;
- (UIColor*)COLOR_BACKGROUND_COMMON;
- (UIColor*)COLOR_BACKGROUND_CONTENT;
- (UIColor*)COLOR_BACKGROUND_TRANSLUCENT;
- (UIColor*)COLOR_BARTEXT;
- (UIColor*)COLOR_BARTINT;
- (UIColor*)COLOR_BLACK;
- (UIColor*)COLOR_BODY;
- (UIColor*)COLOR_BORDER;
- (UIColor*)COLOR_BORDER_TEXTFIELD;
- (UIColor*)COLOR_BRIGHT;
- (UIColor*)COLOR_BUTTON_BACKGROUND;
- (UIColor*)COLOR_BUTTON_BACKGROUND_SELECTED;
- (UIColor*)COLOR_CLEAR;
- (UIColor*)COLOR_DIM;
- (UIColor*)COLOR_ERROR;
- (UIColor*)COLOR_FOOTER;
- (UIColor*)COLOR_FOREGROUND;
- (UIColor*)COLOR_HEADER;
- (UIColor*)COLOR_HIDER_BACKGROUND;
- (UIColor*)COLOR_INDICATOR;
- (UIColor*)COLOR_LOGIN_BUTTON;
- (UIColor*)COLOR_OK;
- (UIColor*)COLOR_PRIMARY;
- (UIColor*)COLOR_SECONDARY;
- (UIColor*)COLOR_SEPARATOR;
- (UIColor*)COLOR_SPECIAL;
- (UIColor*)COLOR_TEXT_COMMON;
- (UIColor*)COLOR_TITLE;
- (UIColor*)COLOR_WARNING;
- (UIColor*)COLOR_WHITE;
- (NSNumber*)DIMENSION_CORNER_RADIUS_COMMON;
- (NSNumber*)DIMENSION_FONT_COMMON;
- (NSNumber*)DIMENSION_MARGIN;
- (NSNumber*)DIMENSION_PADDING;
- (NSString*)FONT_BOLD;
- (UIFont*)FONT_CHART_SPOKE;
- (UIFont*)FONT_CHART_SPOKE_DETAIL;
- (UIFont*)FONT_GRAPHIC_OBJECT_DATA;
- (UIFont*)FONT_GRAPHIC_OBJECT_DESCRIPTION;
- (UIFont*)FONT_GRAPHIC_OBJECT_HEADER_DESCRIPTION;
- (UIFont*)FONT_GRAPHIC_OBJECT_HEADER_VALUE;
- (NSString*)FONT_ITALIC;
- (NSString*)FONT_REGULAR;
@end


@interface RStyles: NSObject
- (RStyle*)commonBoldLabel;
- (RStyle*)commonBorderedView;
- (RStyle*)commonColoredButton;
- (RStyle*)commonColoredButtonSelected;
- (RStyle*)commonColoredInverseButton;
- (RStyle*)commonLabel;
- (RStyle*)commonTextField;
- (RStyle*)commonTextualButton;
- (RStyle*)commonView;
- (RStyle*)commonViewController;
- (RStyle*)testViewController;
@end


@interface RThemes: NSObject
- (RConstants*)constants;
- (RStyles*)styles;
@end


@interface RLaunchScreen: NSObject
- (__kindof UIViewController*)instantiateInitialViewController;
@end


@interface RStoryboards: NSObject
- (RLaunchScreen*)launchScreen;
@end


@interface RSegue: NSObject
@property (nonatomic, strong) NSString* identifier;
- (void)performWithSource:(__kindof UIViewController*)sourceViewController sender:(id)sender;
@end


@interface RSegues: NSObject
@end


@interface R: NSObject
+ (RStrings*)string;
+ (RImages*)image;
+ (RThemes*)theme;
+ (RStoryboards*)storyboard;
+ (RSegues*)segue;
@end


NS_ASSUME_NONNULL_END