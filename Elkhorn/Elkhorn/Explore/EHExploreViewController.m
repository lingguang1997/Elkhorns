//
//  EHExploreViewController.m
//  Elkhorn
//
//  Created by Zijiao Liu on 12/22/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHExploreViewController.h"

@implementation EHExploreViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    [self _setUpTabBarItem];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

# pragma mark - Helpers

- (void)_setUpTabBarItem {
    UIImage *image = [UIImage imageNamed:@"tab_explore"];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Explore" image:image selectedImage:image];
}

@end
