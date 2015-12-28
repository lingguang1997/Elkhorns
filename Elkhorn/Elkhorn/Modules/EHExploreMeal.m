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

- (instancetype)initWithProfileImageURL:(NSString *)profileImageURL username:(NSString *)username numberOfMealsShared:(NSInteger)numberOfMealsShared mealImageURL:(NSString *)mealImageURL mealTitle:(NSString *)mealTitle pickUpDate:(NSString *)pickUpDate numberOfLeftMeals:(NSString *)numberOfLeftMeals {
    self = [super init];
    if (self) {
        _profileImageURL = profileImageURL;
        _username = username;
        _numberOfLeftMeals = numberOfLeftMeals;
        _mealImageURL = mealImageURL;
        _mealTitle = mealTitle;
        _pickUpDate = pickUpDate;
        _numberOfLeftMeals = numberOfLeftMeals;
    }
    return self;
}

+ (instancetype)mockObject {
    EHExploreMeal *meal = [[EHExploreMeal alloc] initWithProfileImageURL:@"" username:@"白素贞" numberOfMealsShared:10 mealImageURL:@"" mealTitle:@"Chicken over Rice" pickUpDate:@"Monday, Jul 4" numberOfLeftMeals:@"7"];
    return meal;
}

@end
