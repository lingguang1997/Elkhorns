//
//  EHExploreMealCellAdapter.m
//  Elkhorn
//
//  Created by Zijiao Liu on 12/28/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHExploreMeal.h"
#import "EHExploreMealCell.h"
#import "EHExploreMealCellAdapter.h"
#import "EHMealViewController.h"

@implementation EHExploreMealCellAdapter

- (CGFloat)dataViewController:(AKDataViewController *)dataViewController item:(EHExploreMeal *)meal heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [EHExploreMealCell heightForItem:meal];
}

- (UITableViewCell *)dataViewController:(AKDataViewController *)dataViewController item:(EHExploreMeal *)meal cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EHExploreMealCell *cell = [[EHExploreMealCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([EHExploreMealCell class])];
    return cell;
}

- (void)dataViewController:(AKDataViewController *)dataViewController item:(EHExploreMeal *)meal didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    EHMealViewController *mealVC = [EHMealViewController new];
    [dataViewController.navigationController pushViewController:mealVC animated:YES];
}

@end
