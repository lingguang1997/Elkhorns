//
//  EHExploreMealCell.m
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import <objc/runtime.h>
#import "EHExploreMeal.h"
#import "EHExploreMealCell.h"

NSString * const EHProfileImageURLKey = @"EHProfileImageURLKey";
NSString * const EHMealImageURLKey = @"EHMealImageURLKey";

static CGFloat const kBarBackgroundViewHeight = 60;
static CGFloat const kMealImageViewHeight = 420;
static CGFloat const kProfileImageViewDimension = 40;
static CGFloat const kProfileImageViewVPadding = 10;
static CGFloat const kProfileImageViewHPadding = 12;
static CGFloat const kLeftMealsLabelHPadding = 20;

@implementation EHExploreMealCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;

        _mealImageView = [UIImageView new];
        [self.contentView addSubview:_mealImageView];

        _mealTitleLabel = [UILabel new];
        _mealTitleLabel.textColor = [UIColor whiteColor];
        [_mealImageView addSubview:_mealTitleLabel];

        _pickUpDateLabel = [UILabel new];
        _pickUpDateLabel.textColor = [UIColor whiteColor];
        [_mealImageView addSubview:_pickUpDateLabel];

        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
        _topBarBackgroundView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        [self.contentView addSubview:_topBarBackgroundView];

        _profileImageView = [UIImageView new];
        _profileImageView.layer.cornerRadius = kProfileImageViewDimension / 2;
        _profileImageView.layer.borderWidth = 2;
        _profileImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        _profileImageView.clipsToBounds = YES;
        [_topBarBackgroundView addSubview:_profileImageView];

        _userActionLabel = [UILabel new];
        _userActionLabel.textColor = [UIColor whiteColor];
        [_topBarBackgroundView addSubview:_userActionLabel];

        _mealsSharedlabel = [UILabel new];
        _mealsSharedlabel.textColor = [UIColor whiteColor];
        [_topBarBackgroundView addSubview:_mealsSharedlabel];

        _bottomBarBackgroundView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        [self.contentView addSubview:_bottomBarBackgroundView];

        _leftMealLabel = [UILabel new];
        _leftMealLabel.textColor = [UIColor whiteColor];
        [_bottomBarBackgroundView addSubview:_leftMealLabel];

        _favButton = [UIButton new];
        [_favButton addTarget:self action:@selector(_favButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_bottomBarBackgroundView addSubview:_favButton];

        _commentButton = [UIButton new];
        [_commentButton addTarget:self action:@selector(_commentButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_bottomBarBackgroundView addSubview:_commentButton];

        _shareButton = [UIButton new];
        [_shareButton addTarget:self action:@selector(_shareButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_bottomBarBackgroundView addSubview:_shareButton];

        self.contentView.backgroundColor = [UIColor greenColor];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat canvasWith = CGRectGetWidth(self.bounds);
    _topBarBackgroundView.frame = CGRectMake(0, 0, canvasWith, kBarBackgroundViewHeight);
    _profileImageView.frame = CGRectMake(kProfileImageViewHPadding, kProfileImageViewVPadding, kProfileImageViewDimension, kProfileImageViewDimension);
    // should check
    _userActionLabel.frame = CGRectMake(CGRectGetMaxX(_profileImageView.frame) + kProfileImageViewHPadding, kProfileImageViewVPadding, canvasWith - CGRectGetMaxX(_profileImageView.frame) - kProfileImageViewHPadding * 2, 50);
    _mealsSharedlabel.frame = CGRectMake(CGRectGetMinX(_userActionLabel.frame), CGRectGetMaxY(_userActionLabel.frame), CGRectGetWidth(_userActionLabel.frame), 50);
    
    _mealImageView.frame = CGRectMake(0, 0, canvasWith, kMealImageViewHeight);
    // should check
    _mealTitleLabel.frame = CGRectMake(kProfileImageViewHPadding, 0, canvasWith - kProfileImageViewHPadding * 2, 50);
    _pickUpDateLabel.frame = CGRectMake(kProfileImageViewHPadding, CGRectGetMaxY(_mealTitleLabel.frame), CGRectGetWidth(_mealTitleLabel.frame), 50);

    _bottomBarBackgroundView.frame = CGRectMake(0, kMealImageViewHeight - kBarBackgroundViewHeight, canvasWith, kBarBackgroundViewHeight);
    _leftMealLabel.frame = CGRectMake(kLeftMealsLabelHPadding, kProfileImageViewVPadding, 50, 50);
}

+ (CGFloat)heightForItem:(EHExploreMeal *)meal {
    return kMealImageViewHeight;
}

- (void)updateWithItem:(EHExploreMeal *)meal {
    objc_setAssociatedObject(_profileImageView, &EHProfileImageURLKey, meal.profileImageURL, OBJC_ASSOCIATION_COPY);
    _userActionLabel.attributedText = [[NSAttributedString alloc] initWithString:meal.username];
    _mealsSharedlabel.text = meal.numberOfLeftMeals;
    objc_setAssociatedObject(_mealTitleLabel, &EHMealImageURLKey, meal.mealImageURL, OBJC_ASSOCIATION_COPY);
    _mealTitleLabel.text = meal.mealTitle;
    _pickUpDateLabel.text = meal.pickUpDate;
    _leftMealLabel.text = meal.numberOfLeftMeals;
    _profileImageView.image = [UIImage imageNamed:@"User"];
    _mealImageView.image = [UIImage imageNamed:@"Food"];
    [self setNeedsLayout];
}

# pragma mark - Private methods

- (void)_favButtonClicked:(UIButton *)button {

}

- (void) _commentButtonClicked:(UIButton *)button {

}

- (void)_shareButtonClicked:(UIButton *)button {

}

@end
