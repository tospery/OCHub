//
//  GeneralViewController.m
//  OCHub
//
//  Created by liaoya on 2021/11/10.
//

#import "GeneralViewController.h"
#import "GeneralViewReactor.h"

@interface GeneralViewController ()
@property (nonatomic, strong, readwrite) GeneralViewReactor *reactor;

@end

@implementation GeneralViewController
@dynamic reactor;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end