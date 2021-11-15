#import "R.h"


@implementation RLocalizableStrings
- (NSString*)about { return NSLocalizedStringFromTableInBundle(@"About", @"Localizable", [NSBundle bundleForClass:self.class], nil); }
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
@property (nonatomic, strong) UIImage* icPortalWebsite;
@end

@implementation RImages
- (UIImage*)appSlogan { return [UIImage imageNamed:@"AppSlogan" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)icPortalAbout { return [UIImage imageNamed:@"ic_portal_about" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)appLogo { return [UIImage imageNamed:@"AppLogo" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)icTabbarTrending { return [UIImage imageNamed:@"ic_tabbar_trending" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)icTabbarMine { return [UIImage imageNamed:@"ic_tabbar_mine" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
- (UIImage*)icPortalWebsite { return [UIImage imageNamed:@"ic_portal_website" inBundle:[NSBundle bundleForClass:self.class] compatibleWithTraitCollection:nil]; }
@end



@implementation RStyle
- (void)applyTo:(nullable id)object { SDThemeManagerApplyStyle(self.identifier, object); }
@end



@implementation RConstants
- (UIColor*)COLOR_BACKGROUND_BADGE { return SDThemeManagerValueForConstant(@"COLOR_BACKGROUND_BADGE"); }
- (UIColor*)COLOR_BACKGROUND_COMMON { return SDThemeManagerValueForConstant(@"COLOR_BACKGROUND_COMMON"); }
- (UIColor*)COLOR_BACKGROUND_CONTENT { return SDThemeManagerValueForConstant(@"COLOR_BACKGROUND_CONTENT"); }
- (UIColor*)COLOR_BACKGROUND_TEST { return SDThemeManagerValueForConstant(@"COLOR_BACKGROUND_TEST"); }
- (UIColor*)COLOR_BACKGROUND_TRANSLUCENT { return SDThemeManagerValueForConstant(@"COLOR_BACKGROUND_TRANSLUCENT"); }
- (UIColor*)COLOR_BORDER_TEXTFIELD { return SDThemeManagerValueForConstant(@"COLOR_BORDER_TEXTFIELD"); }
- (UIColor*)COLOR_BUTTON_BACKGROUND { return SDThemeManagerValueForConstant(@"COLOR_BUTTON_BACKGROUND"); }
- (UIColor*)COLOR_BUTTON_BACKGROUND_SELECTED { return SDThemeManagerValueForConstant(@"COLOR_BUTTON_BACKGROUND_SELECTED"); }
- (UIColor*)COLOR_CLEAR { return SDThemeManagerValueForConstant(@"COLOR_CLEAR"); }
- (UIColor*)COLOR_ERROR { return SDThemeManagerValueForConstant(@"COLOR_ERROR"); }
- (UIColor*)COLOR_HIDER_BACKGROUND { return SDThemeManagerValueForConstant(@"COLOR_HIDER_BACKGROUND"); }
- (UIColor*)COLOR_LOGIN_BUTTON { return SDThemeManagerValueForConstant(@"COLOR_LOGIN_BUTTON"); }
- (UIColor*)COLOR_OK { return SDThemeManagerValueForConstant(@"COLOR_OK"); }
- (UIColor*)COLOR_TEXT_COMMON { return SDThemeManagerValueForConstant(@"COLOR_TEXT_COMMON"); }
- (UIColor*)COLOR_WARNING { return SDThemeManagerValueForConstant(@"COLOR_WARNING"); }
- (NSNumber*)DIMENSION_CORNER_RADIUS_COMMON { return SDThemeManagerValueForConstant(@"DIMENSION_CORNER_RADIUS_COMMON"); }
- (NSNumber*)DIMENSION_FONT_COMMON { return SDThemeManagerValueForConstant(@"DIMENSION_FONT_COMMON"); }
- (NSString*)FONT_BOLD { return SDThemeManagerValueForConstant(@"FONT_BOLD"); }
- (UIFont*)FONT_CHART_SPOKE { return SDThemeManagerValueForConstant(@"FONT_CHART_SPOKE"); }
- (UIFont*)FONT_CHART_SPOKE_DETAIL { return SDThemeManagerValueForConstant(@"FONT_CHART_SPOKE_DETAIL"); }
- (UIFont*)FONT_GRAPHIC_OBJECT_DATA { return SDThemeManagerValueForConstant(@"FONT_GRAPHIC_OBJECT_DATA"); }
- (UIFont*)FONT_GRAPHIC_OBJECT_DESCRIPTION { return SDThemeManagerValueForConstant(@"FONT_GRAPHIC_OBJECT_DESCRIPTION"); }
- (UIFont*)FONT_GRAPHIC_OBJECT_HEADER_DESCRIPTION { return SDThemeManagerValueForConstant(@"FONT_GRAPHIC_OBJECT_HEADER_DESCRIPTION"); }
- (UIFont*)FONT_GRAPHIC_OBJECT_HEADER_VALUE { return SDThemeManagerValueForConstant(@"FONT_GRAPHIC_OBJECT_HEADER_VALUE"); }
- (NSString*)FONT_ITALIC { return SDThemeManagerValueForConstant(@"FONT_ITALIC"); }
- (NSString*)FONT_REGULAR { return SDThemeManagerValueForConstant(@"FONT_REGULAR"); }
@end


@interface RStyles ()
@property (nonatomic, strong) RStyle* commonBoldLabel;
@property (nonatomic, strong) RStyle* commonBorderedView;
@property (nonatomic, strong) RStyle* commonColoredButton;
@property (nonatomic, strong) RStyle* commonColoredButtonSelected;
@property (nonatomic, strong) RStyle* commonColoredInverseButton;
@property (nonatomic, strong) RStyle* commonLabel;
@property (nonatomic, strong) RStyle* commonScrollViewController;
@property (nonatomic, strong) RStyle* commonTextField;
@property (nonatomic, strong) RStyle* commonTextualButton;
@property (nonatomic, strong) RStyle* commonView;
@property (nonatomic, strong) RStyle* commonViewController;
@property (nonatomic, strong) RStyle* mineViewController;
@property (nonatomic, strong) RStyle* testViewController;
@property (nonatomic, strong) RStyle* trendingViewController;
@end

@implementation RStyles

- (RStyle*)commonBoldLabel
{	
	if (!_commonBoldLabel)
	{
		_commonBoldLabel = [RStyle new];
		_commonBoldLabel.identifier = @"CommonBoldLabel";
	}
	return _commonBoldLabel;
}


- (RStyle*)commonBorderedView
{	
	if (!_commonBorderedView)
	{
		_commonBorderedView = [RStyle new];
		_commonBorderedView.identifier = @"CommonBorderedView";
	}
	return _commonBorderedView;
}


- (RStyle*)commonColoredButton
{	
	if (!_commonColoredButton)
	{
		_commonColoredButton = [RStyle new];
		_commonColoredButton.identifier = @"CommonColoredButton";
	}
	return _commonColoredButton;
}


- (RStyle*)commonColoredButtonSelected
{	
	if (!_commonColoredButtonSelected)
	{
		_commonColoredButtonSelected = [RStyle new];
		_commonColoredButtonSelected.identifier = @"CommonColoredButtonSelected";
	}
	return _commonColoredButtonSelected;
}


- (RStyle*)commonColoredInverseButton
{	
	if (!_commonColoredInverseButton)
	{
		_commonColoredInverseButton = [RStyle new];
		_commonColoredInverseButton.identifier = @"CommonColoredInverseButton";
	}
	return _commonColoredInverseButton;
}


- (RStyle*)commonLabel
{	
	if (!_commonLabel)
	{
		_commonLabel = [RStyle new];
		_commonLabel.identifier = @"CommonLabel";
	}
	return _commonLabel;
}


- (RStyle*)commonScrollViewController
{	
	if (!_commonScrollViewController)
	{
		_commonScrollViewController = [RStyle new];
		_commonScrollViewController.identifier = @"CommonScrollViewController";
	}
	return _commonScrollViewController;
}


- (RStyle*)commonTextField
{	
	if (!_commonTextField)
	{
		_commonTextField = [RStyle new];
		_commonTextField.identifier = @"CommonTextField";
	}
	return _commonTextField;
}


- (RStyle*)commonTextualButton
{	
	if (!_commonTextualButton)
	{
		_commonTextualButton = [RStyle new];
		_commonTextualButton.identifier = @"CommonTextualButton";
	}
	return _commonTextualButton;
}


- (RStyle*)commonView
{	
	if (!_commonView)
	{
		_commonView = [RStyle new];
		_commonView.identifier = @"CommonView";
	}
	return _commonView;
}


- (RStyle*)commonViewController
{	
	if (!_commonViewController)
	{
		_commonViewController = [RStyle new];
		_commonViewController.identifier = @"CommonViewController";
	}
	return _commonViewController;
}


- (RStyle*)mineViewController
{	
	if (!_mineViewController)
	{
		_mineViewController = [RStyle new];
		_mineViewController.identifier = @"MineViewController";
	}
	return _mineViewController;
}


- (RStyle*)testViewController
{	
	if (!_testViewController)
	{
		_testViewController = [RStyle new];
		_testViewController.identifier = @"TestViewController";
	}
	return _testViewController;
}


- (RStyle*)trendingViewController
{	
	if (!_trendingViewController)
	{
		_trendingViewController = [RStyle new];
		_trendingViewController.identifier = @"TrendingViewController";
	}
	return _trendingViewController;
}

@end


@interface RThemes ()
@property (nonatomic, strong) RConstants* constants;
@property (nonatomic, strong) RStyles* styles;
@end

@implementation RThemes

- (RConstants*)constants
{
	if (!_constants)
	{
		_constants = [RConstants new];
	}
	return _constants;
}

- (RStyles*)styles
{
	if (!_styles)
	{
		_styles = [RStyles new];
	}
	return _styles;
}

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
@property (nonatomic, strong) RThemes* theme;
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
+ (RThemes*)theme { return [[R sharedInstance] theme]; }
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

- (RThemes*)theme
{
	if (!_theme)
	{
		_theme = [RThemes new];
	}
	return _theme;
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


