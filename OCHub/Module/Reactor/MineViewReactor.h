//
//  MineViewReactor.h
//  OCHub
//
//  Created by liaoya on 2021/11/9.
//

#import <OCFrame/OCFrame.h>
#import "MineParallaxReactor.h"

@interface MineViewReactor : OCFCollectionViewReactor
@property (nonatomic, strong, readonly) MineParallaxReactor *parallaxReactor;

@end
