//
//  EHRecipe.h
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHExploreRecipe.h"

@interface EHRecipe : EHExploreRecipe

@property (nonatomic, readonly, copy, nonnull) NSString *prepareTime;
@property (nonatomic, readonly, copy, nonnull) NSString *cookTime;
@property (nonatomic, readonly, copy, nonnull) NSString *totalTime;
@property (nonatomic, readonly, copy, nonnull) NSArray *ingredients;

- (nonnull instancetype)init NS_UNAVAILABLE;

- (nonnull instancetype)initWithJSONDictionary:(nonnull NSDictionary *)jsonDict NS_DESIGNATED_INITIALIZER;

@end
