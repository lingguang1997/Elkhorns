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
static CGFloat const kActionLabelHeight = 20;
static CGFloat const kLeftMealsLabelHPadding = 20;
static CGFloat const kLeftMealsLabelWidth = 100;
static CGFloat const kBtnDimension = 25;
static CGFloat const kBtnHPadding = 30;

@interface EHExploreMealCell ()

@property (nonatomic, nonnull) UIImageView *profileImageView;
@property (nonatomic, nonnull) UILabel *userActionLabel;
@property (nonatomic, nonnull) UILabel *mealsSharedlabel;
@property (nonatomic, nonnull) UIVisualEffectView *topBarBackgroundView;
@property (nonatomic, nonnull) UIImageView *mealImageView;
@property (nonatomic, nonnull) UILabel *mealTitleLabel;
@property (nonatomic, nonnull) UILabel *pickUpDateLabel;
@property (nonatomic, nonnull) UILabel *leftMealLabel;
@property (nonatomic, nonnull) UIButton *favButton;
@property (nonatomic, nonnull) UIButton *commentButton;
@property (nonatomic, nonnull) UIButton *shareButton;
@property (nonatomic, nonnull) UIVisualEffectView *bottomBarBackgroundView;
@property (nonatomic, nonnull) UIImageView *maskImageView;

@end


@implementation EHExploreMealCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;

        _mealImageView = [UIImageView new];
        [self.contentView addSubview:_mealImageView];

        _maskImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Mask"]];
        [_mealImageView addSubview:_maskImageView];

        _mealTitleLabel = [UILabel new];
        _mealTitleLabel.textColor = [UIColor whiteColor];
        _mealTitleLabel.font = [UIFont fontWithName:@"Avenir-Medium" size:17];
        [_mealImageView addSubview:_mealTitleLabel];

        _pickUpDateLabel = [UILabel new];
        _pickUpDateLabel.textColor = [UIColor whiteColor];
        _pickUpDateLabel.font = [UIFont fontWithName:@"Avenir-Light" size:13];
        [_mealImageView addSubview:_pickUpDateLabel];

        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
        _topBarBackgroundView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        [self.contentView addSubview:_topBarBackgroundView];

        _profileImageView = [UIImageView new];
        _profileImageView.layer.cornerRadius = kProfileImageViewDimension / 2;
        _profileImageView.layer.borderWidth = 1;
        _profileImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        _profileImageView.clipsToBounds = YES;
        [_topBarBackgroundView addSubview:_profileImageView];

        _userActionLabel = [UILabel new];
        _userActionLabel.textColor = [UIColor whiteColor];
        [_topBarBackgroundView addSubview:_userActionLabel];

        _mealsSharedlabel = [UILabel new];
        _mealsSharedlabel.textColor = [UIColor whiteColor];
        _mealsSharedlabel.font = [UIFont fontWithName:@"Avenir-Light" size:12];
        [_topBarBackgroundView addSubview:_mealsSharedlabel];

        _bottomBarBackgroundView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
        [self.contentView addSubview:_bottomBarBackgroundView];

        _leftMealLabel = [UILabel new];
        _leftMealLabel.textColor = [UIColor whiteColor];
        _leftMealLabel.font = [UIFont fontWithName:@"Avenir-Book" size:15];
        [_bottomBarBackgroundView addSubview:_leftMealLabel];

        _favButton = [UIButton new];
        [_favButton setImage:[UIImage imageNamed:@"FavIcon"] forState:UIControlStateNormal];
        [_favButton addTarget:self action:@selector(_favButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_bottomBarBackgroundView addSubview:_favButton];

        _commentButton = [UIButton new];
        [_commentButton setImage:[UIImage imageNamed:@"CommentIcon"] forState:UIControlStateNormal];
        [_commentButton addTarget:self action:@selector(_commentButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_bottomBarBackgroundView addSubview:_commentButton];

        _shareButton = [UIButton new];
        [_shareButton setImage:[UIImage imageNamed:@"FlowerIcon"] forState:UIControlStateNormal];
        [_shareButton addTarget:self action:@selector(_shareButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [_bottomBarBackgroundView addSubview:_shareButton];

        self.contentView.backgroundColor = [UIColor greenColor];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat canvasWith = CGRectGetWidth(self.bounds);
    _mealImageView.frame = CGRectMake(0, 0, canvasWith, kMealImageViewHeight);
    _topBarBackgroundView.frame = CGRectMake(0, 0, canvasWith, kBarBackgroundViewHeight);
    _bottomBarBackgroundView.frame = CGRectMake(0, kMealImageViewHeight - kBarBackgroundViewHeight, canvasWith, kBarBackgroundViewHeight);
    _maskImageView.frame = CGRectMake(0, CGRectGetMinY(_bottomBarBackgroundView.frame) - kBarBackgroundViewHeight, canvasWith, kBarBackgroundViewHeight);

    _profileImageView.frame = CGRectMake(kProfileImageViewHPadding, kProfileImageViewVPadding, kProfileImageViewDimension, kProfileImageViewDimension);
    _userActionLabel.frame = CGRectMake(CGRectGetMaxX(_profileImageView.frame) + kProfileImageViewHPadding, kProfileImageViewVPadding, canvasWith - CGRectGetMaxX(_profileImageView.frame) - kProfileImageViewHPadding * 2, kActionLabelHeight);
    _mealsSharedlabel.frame = CGRectMake(CGRectGetMinX(_userActionLabel.frame), CGRectGetHeight(_topBarBackgroundView.frame) - kProfileImageViewVPadding - kActionLabelHeight, CGRectGetWidth(_userActionLabel.frame), kActionLabelHeight);

    _pickUpDateLabel.frame = CGRectMake(kProfileImageViewHPadding, CGRectGetMinY(_bottomBarBackgroundView.frame) - kActionLabelHeight - kProfileImageViewVPadding, canvasWith - kProfileImageViewHPadding * 2, kActionLabelHeight);
    _mealTitleLabel.frame = CGRectMake(kProfileImageViewHPadding, CGRectGetMidY(_pickUpDateLabel.frame) - kActionLabelHeight - kProfileImageViewVPadding, CGRectGetWidth(_pickUpDateLabel.frame), kActionLabelHeight);

    _leftMealLabel.frame = CGRectMake(kLeftMealsLabelHPadding, (kBarBackgroundViewHeight - kActionLabelHeight) / 2, kLeftMealsLabelWidth, kActionLabelHeight);

    _shareButton.frame = CGRectMake(canvasWith - kProfileImageViewHPadding - kBtnDimension, (kBarBackgroundViewHeight - kBtnDimension) / 2, kBtnDimension, kBtnDimension);
    _commentButton.frame = CGRectMake(CGRectGetMinX(_shareButton.frame) - kBtnDimension - kBtnHPadding, CGRectGetMinY(_shareButton.frame), kBtnDimension, kBtnDimension);
    _favButton.frame = CGRectMake(CGRectGetMinX(_commentButton.frame) - kBtnDimension - kBtnHPadding, CGRectGetMinY(_commentButton.frame), kBtnDimension, kBtnDimension);
}

+ (CGFloat)heightForItem:(EHExploreMeal *)meal {
    return kMealImageViewHeight;
}

- (void)updateWithItem:(EHExploreMeal *)meal {
    objc_setAssociatedObject(_profileImageView, &EHProfileImageURLKey, meal.profileImageURL, OBJC_ASSOCIATION_COPY);
    NSMutableAttributedString *attributedAction = [[NSMutableAttributedString alloc] initWithString:meal.username attributes:[NSDictionary dictionaryWithObject:[UIFont fontWithName:@"Avenir-Medium" size:15] forKey:NSFontAttributeName]];
    [attributedAction appendAttributedString:[[NSAttributedString alloc] initWithString:@" is sharing her meal" attributes:[NSDictionary dictionaryWithObject:[UIFont fontWithName:@"Avenir-Book" size:15] forKey:NSFontAttributeName]]];
    _userActionLabel.attributedText = attributedAction;
    _mealsSharedlabel.text = [NSString stringWithFormat:@"%@ %@", @(meal.numberOfLeftMeals), @"meals shared"];
    objc_setAssociatedObject(_mealTitleLabel, &EHMealImageURLKey, meal.mealImageURL, OBJC_ASSOCIATION_COPY);
    _mealTitleLabel.text = meal.mealTitle;
    _pickUpDateLabel.text = meal.pickUpDate;
    _leftMealLabel.text = [NSString stringWithFormat:@"%@ %@", @(meal.numberOfLeftMeals), @"left"];
    _profileImageView.image = [UIImage imageNamed:@"User"];
    _mealImageView.image = [UIImage imageNamed:@"Food"];
    [self setNeedsLayout];
}

# pragma mark - Private methods

- (void)_favButtonClicked:(UIButton *)button {
    NSLog(@"faved");
}

- (void) _commentButtonClicked:(UIButton *)button {
    NSLog(@"commented");
}

- (void)_shareButtonClicked:(UIButton *)button {
    NSLog(@"shared");
}

@end
