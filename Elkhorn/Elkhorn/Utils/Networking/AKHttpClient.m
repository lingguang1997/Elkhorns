//
//  AKHttpClient.m
//  AppKit
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "AKHttpClient.h"

static NSString * const kBaseURL = @"";
static NSString * const kLoginURL = @"";
static NSString * const kHomeURL = @"";
static NSString * const kHotSearchesURL = @"";
static NSString * const kRecentSearchesURL = @"";
static NSString * const kSearchURL = @"";
static NSString * const kProfileURL = @"";

@implementation AKHttpClient

+ (instancetype)sharedHttpClient {
    static AKHttpClient *httpClient = nil;
    dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        httpClient = [[AKHttpClient alloc] initWithBaseURL:[NSURL URLWithString:kBaseURL]];
    });
    return httpClient;
}

- (instancetype)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (self) {
        self.requestSerializer = [AFJSONRequestSerializer serializer];
        self.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    return self;
}

- (void)loginWithUsername:(NSString *)username password:(NSString *)password {
    [self POST:kLoginURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
       } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

- (void)loadHome {
    [self POST:kHomeURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
       } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

- (void)loadHotSearches {
    [self POST:kHotSearchesURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
       } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

- (void)loadRecentSearches {
    [self POST:kRecentSearchesURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
       } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

- (void)searchWithQuery:(NSString *)query {
    [self POST:kSearchURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
       } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

- (void)loadProfile {
    [self POST:kProfileURL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
       } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

@end
