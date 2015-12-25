//
//  EHExploreEvent.h
//  Elkhorn
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EHExploreEvent : NSObject

@property (nonatomic, readonly, copy, nonnull) NSString *profileImageURL;
@property (nonatomic, readonly, copy, nonnull) NSString *username;
@property (nonatomic, readonly, copy, nonnull) NSString *numberOfEventsOrganized;
@property (nonatomic, readonly, copy, nonnull) NSString *eventImageURL;
@property (nonatomic, readonly, copy, nonnull) NSString *eventTitle;
@property (nonatomic, readonly, copy, nonnull) NSString *time;
@property (nonatomic, readonly, copy, nonnull) NSString *numberOfPeopleGoing;

- (nonnull instancetype)init NS_UNAVAILABLE;
- (nonnull instancetype)initWithJSONDictionary:(nonnull NSDictionary *)jsonDict NS_DESIGNATED_INITIALIZER;

@end
