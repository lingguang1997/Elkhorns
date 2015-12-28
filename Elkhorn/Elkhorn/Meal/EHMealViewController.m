//
//  EHMealViewController.m
//  Elkhorn
//
//  Created by Zijiao Liu on 12/28/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHMealViewController.h"

@implementation EHMealViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Meal Share";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
}

@end
