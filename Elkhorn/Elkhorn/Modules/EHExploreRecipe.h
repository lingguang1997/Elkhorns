//
//  EHExploreRecipe.h
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EHExploreRecipe : NSObject

@property (nonatomic, readonly, copy, nonnull) NSString *profileImageURL;
@property (nonatomic, readonly, copy, nonnull) NSString *username;
@property (nonatomic, readonly, copy, nonnull) NSString *numberOfRecipesShared;
@property (nonatomic, readonly, copy, nonnull) NSString *recipeImageURL;
@property (nonatomic, readonly, copy, nonnull) NSString *recipeTitle;

- (nonnull instancetype)init NS_UNAVAILABLE;

- (nonnull instancetype)initWithJSONDictionary:(nonnull NSDictionary *)jsonDict NS_DESIGNATED_INITIALIZER;

@end
