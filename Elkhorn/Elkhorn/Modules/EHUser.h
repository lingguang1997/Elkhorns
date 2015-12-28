//
//  EHUser.h
//  Elkhorn
//
//  Created by Zijiao Liu on 12/28/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EHUser : NSObject

@property (nonatomic, readonly, copy, nonnull) NSString *username;
@property (nonatomic, readonly, copy, nonnull) NSString *firstName;
@property (nonatomic, readonly, copy, nonnull) NSString *lastName;
@property (nonatomic, readonly, copy, nonnull) NSString *gender;
@property (nonatomic, readonly, copy, nullable) NSMutableArray *favedMeals;
//@property (nonatomic, )

@end
