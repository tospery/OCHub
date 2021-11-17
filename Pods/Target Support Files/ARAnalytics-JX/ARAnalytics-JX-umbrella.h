#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "ARAnalyticalProvider.h"
#import "ARAnalytics.h"
#import "ARAnalyticsProviders.h"
#import "UMengAnalyticsProvider.h"

FOUNDATION_EXPORT double ARAnalytics_JXVersionNumber;
FOUNDATION_EXPORT const unsigned char ARAnalytics_JXVersionString[];

