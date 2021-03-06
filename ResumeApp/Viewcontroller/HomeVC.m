//
//  HomeVC.m
//  ResumeApp
//
//  Created by Abiú Roldán on 27/03/20.
//  Copyright © 2020 AbiuRoldan. All rights reserved.
//

#import "HomeVC.h"
#import "HomeRootView.h"
#import "HomeViewModel.h"
#import "User.h"

@interface HomeVC ()
@property (nonatomic, strong) HomeRootView *rootView;
@property (nonatomic, strong) HomeViewModel *viewModel;
@end

@implementation HomeVC

- (void)loadView {
    [self setViews];
    self.view = self.rootView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [_viewModel setDelegate:self];
    
    NSLog(@"Dark mode? %ld", (long)UITraitCollection.currentTraitCollection.userInterfaceStyle);
    
    if (self.traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
        self.rootView.backgroundColor = [UIColor blackColor];
    }
}

- (void)setViews {
    _rootView = [[HomeRootView alloc] init];
    _viewModel = [[HomeViewModel alloc] init];
    [self.rootView setLoader];
}

- (void) didGetUser:(NSDictionary *)data {
    User *user = [[User alloc] init];
    user = [user createUserWith:data];
    
    HomeVC * __weak weakself = self;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [weakself.rootView deleteLoader];
        [weakself.rootView setViewWith: user];
    });
}

@end
