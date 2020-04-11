//
//  HomeVC.m
//  ResumeApp
//
//  Created by Abiú Roldán on 27/03/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import "HomeVC.h"
#import "HomeRootView.h"

@interface HomeVC ()
@property (nonatomic, strong) HomeRootView *rootView;
@end

@implementation HomeVC

- (void)loadView {
    [self setViews];
    self.view = self.rootView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)setViews {
    _rootView = [[HomeRootView alloc] init];
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
