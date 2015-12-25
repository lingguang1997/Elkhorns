//
//  AKHttpClient.h
//  AppKit
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface AKHttpClient : AFHTTPSessionManager

+ (instancetype)sharedHttpClient;

- (void)loginWithUsername:(NSString *)username password:(NSString *)password;
- (void)loadHome;
- (void)loadHotSearches;
- (void)loadRecentSearches;
- (void)searchWithQuery:(NSString *)query;
- (void)loadProfile;

@end
