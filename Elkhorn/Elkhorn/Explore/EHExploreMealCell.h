//
//  EHExploreMealCell.h
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AppKit/AKTableViewCell.h>

extern  NSString * __nonnull const EHProfileImageURLKey;
extern  NSString * __nonnull const EHMealImageURLKey;

@class EHExploreMeal;

@interface EHExploreMealCell : UITableViewCell <AKTableViewCell>

@property (nonatomic, readonly, nonnull) UIImageView *profileImageView;
@property (nonatomic, readonly, nonnull) UILabel *userActionLabel;
@property (nonatomic, readonly, nonnull) UILabel *mealsSharedlabel;
@property (nonatomic, readonly, nonnull) UIVisualEffectView *topBarBackgroundView;
@property (nonatomic, readonly, nonnull) UIImageView *mealImageView;
@property (nonatomic, readonly, nonnull) UILabel *mealTitleLabel;
@property (nonatomic, readonly, nonnull) UILabel *pickUpDateLabel;
@property (nonatomic, readonly, nonnull) UILabel *leftMealLabel;
@property (nonatomic, readonly, nonnull) UIButton *favButton;
@property (nonatomic, readonly, nonnull) UIButton *commentButton;
@property (nonatomic, readonly, nonnull) UIButton *shareButton;
@property (nonatomic, readonly, nonnull) UIVisualEffectView *bottomBarBackgroundView;

+ (CGFloat)heightForItem:(nonnull EHExploreMeal *)meal;
- (void)updateWithItem:(nonnull EHExploreMeal *)meal;

@end
