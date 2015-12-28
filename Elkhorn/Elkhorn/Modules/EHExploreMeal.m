//
//  EHExploreMeal.m
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHExploreMeal.h"

@implementation EHExploreMeal

- (instancetype)initWithJSONDictionary:(NSDictionary *)jsonDict {
    self = [super init];
    if (self) {
    }
    return self;
}

- (instancetype)initWithMealID:(NSString *)mealID profileImageURL:(NSString *)profileImageURL username:(NSString *)username numberOfMealsShared:(NSInteger)numberOfMealsShared mealImageURL:(NSString *)mealImageURL mealTitle:(NSString *)mealTitle pickUpDate:(NSString *)pickUpDate numberOfLeftMeals:(NSInteger)numberOfLeftMeals {
    self = [super init];
    if (self) {
        _mealID = mealID;
        _profileImageURL = profileImageURL;
        _username = username;
        _numberOfMealsShared = numberOfMealsShared;
        _mealImageURL = mealImageURL;
        _mealTitle = mealTitle;
        _pickUpDate = pickUpDate;
        _numberOfLeftMeals = numberOfLeftMeals;
    }
    return self;
}

+ (instancetype)mockObject {
    EHExploreMeal *meal = [[EHExploreMeal alloc] initWithMealID:@"123" profileImageURL:@"" username:@"白素贞" numberOfMealsShared:10 mealImageURL:@"" mealTitle:@"Chicken over Rice" pickUpDate:@"Monday, Jul 4" numberOfLeftMeals:21];
    return meal;
}

@end
