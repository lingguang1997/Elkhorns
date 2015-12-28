//
//  EHMeal.m
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHMeal.h"

@implementation EHMeal

- (instancetype)initWithJSONDictionary:(NSDictionary *)jsonDict {
    self = [super initWithJSONDictionary:jsonDict];
    if (self) {
    }
    return self;
}

- (instancetype)initWithMealID:(NSString *)mealID profileImageURL:(NSString *)profileImageURL username:(NSString *)username numberOfMealsShared:(NSInteger)numberOfMealsShared mealImageURL:(NSString *)mealImageURL mealTitle:(NSString *)mealTitle pickUpDate:(NSString *)pickUpDate numberOfLeftMeals:(NSInteger)numberOfLeftMeals relationship:(NSString *)relationship message:(NSString *)message pickUpTime:(NSString *)pickUpTime address:(NSString *)address price:(NSInteger)price ingredients:(NSArray *)ingredients {
    self = [super initWithMealID:mealID profileImageURL:profileImageURL username:username numberOfMealsShared:numberOfMealsShared mealImageURL:mealImageURL mealTitle:mealTitle pickUpDate:pickUpDate numberOfLeftMeals:numberOfLeftMeals];
    if (self) {
        _relationship = relationship;
        _message = message;
        _pickUpTime = pickUpTime;
        _address = address;
        _price = price;
        _ingredients = ingredients;
    }
    return self;
}

+ (instancetype)mockObject {
    EHMeal *meal = [[EHMeal alloc] initWithMealID:@"456" profileImageURL:@"" username:@"Zijiao Liu" numberOfMealsShared:7 mealImageURL:@"" mealTitle:@"Dongpo port" pickUpDate:@"Tue, Jul 4" numberOfLeftMeals:12 relationship:@"Friend" message:@"Hi, I am making some good pork, check it out!" pickUpTime:@"7:00 PM - 8:00 PM" address:@"Mission Dolores Park, San Francisco, CA 94013" price:8 ingredients:@[@"1 Brocoli", @"2 Chicken"]];
    return meal;
}

@end
