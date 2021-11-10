#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface RLocalizableStrings: NSObject
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
- (UIImage*)icTabbarTrending;
- (UIImage*)icTabbarMine;
- (UIImage*)icPortalAccount;
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
+ (RStoryboards*)storyboard;
+ (RSegues*)segue;
@end


NS_ASSUME_NONNULL_END