//
//  EHHttpClient.h
//  AppKit
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface EHHttpClient : AFHTTPSessionManager

+ (nonnull instancetype)sharedHttpClient;

- (void)loginWithUsername:(nonnull NSString *)username password:(nonnull NSString *)password;
- (void)loadExploreWithSuccessBlock:(nonnull void (^)())success failureBlock:(nonnull void (^)())failure;
- (void)loadHotSearches;
- (void)loadRecentSearches;
- (void)searchWithQuery:(nonnull NSString *)query;
- (void)loadProfile;

@end
