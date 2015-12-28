//
//  EHMainViewController.m
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHExploreViewController.h"
#import "EHMainViewController.h"
#import "UIColor+App.h"

@interface EHMainViewController ()

@end

@implementation EHMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [UITabBar appearance].tintColor = [UIColor appColor];

    UITabBarController *tabBarController = [UITabBarController new];

    EHExploreViewController *exploreVC = [EHExploreViewController new];
    UINavigationController *exploreNC = [[UINavigationController alloc] initWithRootViewController:exploreVC];

    EHExploreViewController *exploreVC1 = [EHExploreViewController new];

    tabBarController.viewControllers = @[exploreNC, exploreVC1];
    [self addChildViewController:tabBarController];
    [self.view addSubview:tabBarController.view];
    [tabBarController didMoveToParentViewController:self];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
