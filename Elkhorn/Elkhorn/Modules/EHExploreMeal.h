//
//  EHExploreMeal.h
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EHExploreMeal : NSObject

@property (nonatomic, readonly, copy, nonnull) NSString *profileImageURL;
@property (nonatomic, readonly, copy, nonnull) NSString *username;
@property (nonatomic, readonly, copy, nonnull) NSString *numberOfMealsShared;
@property (nonatomic, readonly, copy, nonnull) NSString *mealImageURL;
@property (nonatomic, readonly, copy, nonnull) NSString *mealTitle;
@property (nonatomic, readonly, copy, nonnull) NSString *pickUpDate;
@property (nonatomic, readonly, copy, nonnull) NSString *numberOfLeftMeals;

- (nonnull instancetype)init NS_UNAVAILABLE;
- (nonnull instancetype)initWithJSONDictionary:(nonnull NSDictionary *)jsonDict NS_DESIGNATED_INITIALIZER;

@end
