//
//  EHExploreViewController.m
//  Elkhorn
//
//  Created by Zijiao Liu on 12/22/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import <AppKit/AKStream.h>
#import "EHExploreMeal.h"
#import "EHExploreMealCellAdapter.h"
#import "EHExploreStream.h"
#import "EHExploreViewController.h"

@implementation EHExploreViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self.title = @"Explore";
    [self _setUpTabBarItem];

    [self registerAdapter:[EHExploreMealCellAdapter new] forItemClass:[EHExploreMeal class]];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

# pragma mark - AKStream

- (EHExploreStream *)stream {
    static EHExploreStream *exploreStream = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        exploreStream = [EHExploreStream new];
        exploreStream.delegate = self;
    });
    return exploreStream;
}

- (void)streamDidUpdate {
    [super streamDidUpdate];
}

# pragma mark - Helpers

- (void)_setUpTabBarItem {
    UIImage *image = [UIImage imageNamed:@"TabExplore"];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Explore" image:image selectedImage:image];
}

@end
