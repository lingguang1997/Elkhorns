//
//  EHMeal.h
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHEntity.h"
#import "EHExploreMeal.h"

@interface EHMeal : EHExploreMeal

@property (nonatomic, readonly, copy, nonnull) NSString *relationship;
@property (nonatomic, readonly, copy, nonnull) NSString *message;
@property (nonatomic, readonly, copy, nonnull) NSString *pickUpTime;
@property (nonatomic, readonly, copy, nonnull) NSString *address;
@property (nonatomic, readonly) NSInteger price;
@property (nonatomic, readonly, copy, nonnull) NSArray *ingredients;

- (nonnull instancetype)init NS_UNAVAILABLE;
- (nonnull instancetype)initWithMealID:(nonnull NSString *)mealID profileImageURL:(nonnull NSString *)profileImageURL username:(nonnull NSString *)username numberOfMealsShared:(NSInteger)numberOfMealsShared mealImageURL:(nonnull NSString *)mealImageURL mealTitle:(nonnull NSString *)mealTitle pickUpDate:(nonnull NSString *)pickUpDate numberOfLeftMeals:(nonnull NSString *)numberOfLeftMeals NS_UNAVAILABLE;

- (nonnull instancetype)initWithJSONDictionary:(nonnull NSDictionary *)jsonDict NS_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithMealID:(nonnull NSString *)mealID profileImageURL:(nonnull NSString *)profileImageURL username:(nonnull NSString *)username numberOfMealsShared:(NSInteger)numberOfMealsShared mealImageURL:(nonnull NSString *)mealImageURL mealTitle:(nonnull NSString *)mealTitle pickUpDate:(nonnull NSString *)pickUpDate numberOfLeftMeals:(NSInteger)numberOfLeftMeals relationship:(nonnull NSString *)relationship message:(nullable NSString *)message pickUpTime:(nonnull NSString *)pickUpTime address:(nonnull NSString *)address price:(NSInteger)price ingredients:(nullable NSArray *)ingredients NS_DESIGNATED_INITIALIZER;

@end


@interface EHMeal (Test) <EHEntity>

+ (nonnull instancetype)mockObject;

@end
