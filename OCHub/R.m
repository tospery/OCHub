#import "R.h"


@implementation RLocalizableStrings
- (NSString*)cancel { return NSLocalizedStringFromTableInBundle(@"Cancel", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)errorEmptyMessage { return NSLocalizedStringFromTableInBundle(@"Error.Empty.Message", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)errorEmptyTitle { return NSLocalizedStringFromTableInBundle(@"Error.Empty.Title", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)errorNetworkMessage { return NSLocalizedStringFromTableInBundle(@"Error.Network.Message", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)errorNetworkTitle { return NSLocalizedStringFromTableInBundle(@"Error.Network.Title", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)errorRetryTitle { return NSLocalizedStringFromTableInBundle(@"Error.Retry.Title", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)errorServerMessage { return NSLocalizedStringFromTableInBundle(@"Error.Server.Message", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)errorServerTitle { return NSLocalizedStringFromTableInBundle(@"Error.Server.Title", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)mine { return NSLocalizedStringFromTableInBundle(@"Mine", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)no { return NSLocalizedStringFromTableInBundle(@"No", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)oK { return NSLocalizedStringFromTableInBundle(@"OK", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)payNow { return NSLocalizedStringFromTableInBundle(@"Pay Now", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)routerPlugins { return NSLocalizedStringFromTableInBundle(@"Router Plugins", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)sure { return NSLocalizedStringFromTableInBundle(@"Sure", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)trending { return NSLocalizedStringFromTableInBundle(@"Trending", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)unknown { return NSLocalizedStringFromTableInBundle(@"Unknown", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)yes { return NSLocalizedStringFromTableInBundle(@"Yes", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
@end


@interface RStrings ()
@property (nonatomic, strong) RLocalizableStrings* localizable;
@end

@implementation RStrings

- (RLocalizableStrings*)localizable
{
	if (!_localizable)
	{
		_localizable = [RLocalizableStrings new];
	}
	return _localizable;
}

@end


@interface RImages ()
@property (nonatomic, strong) UIImage* appSlogan;
@property (nonatomic, strong) UIImage* icPortalAbout;
@property (nonatomic, strong) UIImage* appLogo;
@property (nonatomic, strong) UIImage* icTabbarTrending;
@property (nonatomic, strong) UIImage* icTabbarMine;
@property (nonatomic, strong) UIImage* icPortalAccount;
@end

@implementation RImages
- (UIImage*)appSlogan { return [UIImage imageNamed:@"AppSlogan" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)icPortalAbout { return [UIImage imageNamed:@"ic_portal_about" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)appLogo { return [UIImage imageNamed:@"AppLogo" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)icTabbarTrending { return [UIImage imageNamed:@"ic_tabbar_trending" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)icTabbarMine { return [UIImage imageNamed:@"ic_tabbar_mine" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)icPortalAccount { return [UIImage imageNamed:@"ic_portal_account" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
@end



@implementation RLaunchScreen
- (__kindof UIViewController*)instantiateInitialViewController { return [[UIStoryboard storyboardWithName:@"LaunchScreen" bundle:nil] instantiateInitialViewController]; }
@end


@interface RStoryboards ()
@property (nonatomic, strong) RLaunchScreen* launchScreen;
@end

@implementation RStoryboards

- (RLaunchScreen*)launchScreen
{
	if (!_launchScreen)
	{
		_launchScreen = [RLaunchScreen new];
	}
	return _launchScreen;
}

@end



@implementation RSegue
- (void)performWithSource:(__kindof UIViewController*)sourceViewController sender:(id)sender { [sourceViewController performSegueWithIdentifier:self.identifier sender:sender]; }
@end



@implementation RSegues

@end


@interface R ()
@property (nonatomic, strong) RStrings* string;
@property (nonatomic, strong) RImages* image;
@property (nonatomic, strong) RStoryboards* storyboard;
@property (nonatomic, strong) RSegues* segue;
@end

@implementation R

+ (instancetype)sharedInstance
{	 
	static dispatch_once_t pred;
 	static id sharedInstance_ = nil;
 
 	dispatch_once(&pred, ^{
 		sharedInstance_ = [[self alloc] init];
 	});
 
 	return sharedInstance_;

}

+ (RStrings*)string { return [[R sharedInstance] string]; }
+ (RImages*)image { return [[R sharedInstance] image]; }
+ (RStoryboards*)storyboard { return [[R sharedInstance] storyboard]; }
+ (RSegues*)segue { return [[R sharedInstance] segue]; }

- (RStrings*)string
{
	if (!_string)
	{
		_string = [RStrings new];
	}
	return _string;
}

- (RImages*)image
{
	if (!_image)
	{
		_image = [RImages new];
	}
	return _image;
}

- (RStoryboards*)storyboard
{
	if (!_storyboard)
	{
		_storyboard = [RStoryboards new];
	}
	return _storyboard;
}

- (RSegues*)segue
{
	if (!_segue)
	{
		_segue = [RSegues new];
	}
	return _segue;
}

@end


