//
//  EHMeal.h
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHExploreMeal.h"

@interface EHMeal : EHExploreMeal

@property (nonatomic, readonly, copy, nonnull) NSString *relationShip;
@property (nonatomic, readonly, copy, nonnull) NSString *message;
@property (nonatomic, readonly, copy, nonnull) NSString *pickUpTime;
@property (nonatomic, readonly, copy, nonnull) NSString *address;
@property (nonatomic, readonly) NSInteger price;
@property (nonatomic, readonly, copy, nonnull) NSArray *ingredients;

- (nonnull instancetype)init NS_UNAVAILABLE;
- (nonnull instancetype)initWithJSONDictionary:(nonnull NSDictionary *)jsonDict NS_DESIGNATED_INITIALIZER;

@end
