#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface RLocalizableStrings: NSObject
/**
key: "Common.Cancel"

Undefined: "取消"
*/
- (NSString*)commonCancel;
/**
key: "Common.ISee"

Undefined: "知道了"
*/
- (NSString*)commonISee;
/**
key: "Common.No"

Undefined: "否"
*/
- (NSString*)commonNo;
/**
key: "Common.OK"

Undefined: "确认"
*/
- (NSString*)commonOK;
/**
key: "Common.Yes"

Undefined: "是"
*/
- (NSString*)commonYes;
@end


@interface RStrings: NSObject
- (RLocalizableStrings*)localizable;
@end


@interface RImages: NSObject
- (UIImage*)appLaunch;
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