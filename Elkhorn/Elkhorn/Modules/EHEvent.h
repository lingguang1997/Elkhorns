//
//  EHEvent.h
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHExploreEvent.h"

@interface EHEvent : EHExploreEvent

@property (nonatomic, readonly, copy, nonnull) NSString *relationShip;
@property (nonatomic, readonly, copy, nonnull) NSString *message;
@property (nonatomic, readonly, copy, nonnull) NSString *address;
@property (nonatomic, readonly) NSInteger numberOfInvitations;
@property (nonatomic, readonly, copy, nonnull) NSArray *peopleAccepted;
@property (nonatomic, readonly, copy, nonnull) NSArray *peopleDeclined;

- (nonnull instancetype)init NS_UNAVAILABLE;
- (nonnull instancetype)initWithJSONDictionary:(nonnull NSDictionary *)jsonDict NS_DESIGNATED_INITIALIZER;

@end
