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

@implementation EHExploreMealCellAdapter

- (CGFloat)tableView:(UITableView *)tableView item:(EHExploreMeal *)meal heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [EHExploreMealCell heightForItem:meal];
}

- (UITableViewCell *)tableView:(UITableView *)tableView item:(EHExploreMeal *)meal cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EHExploreMealCell *cell = [[EHExploreMealCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:NSStringFromClass([EHExploreMealCell class])];
    return cell;
}

@end
