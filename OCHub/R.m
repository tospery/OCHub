#import "R.h"


@implementation RLocalizableStrings
- (NSString*)commonCancel { return NSLocalizedStringFromTableInBundle(@"Common.Cancel", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)commonISee { return NSLocalizedStringFromTableInBundle(@"Common.ISee", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)commonNo { return NSLocalizedStringFromTableInBundle(@"Common.No", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)commonOK { return NSLocalizedStringFromTableInBundle(@"Common.OK", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
- (NSString*)commonYes { return NSLocalizedStringFromTableInBundle(@"Common.Yes", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
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
@property (nonatomic, strong) UIImage* appLaunch;
@end

@implementation RImages
- (UIImage*)appLaunch { return [UIImage imageNamed:@"AppLaunch" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
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


