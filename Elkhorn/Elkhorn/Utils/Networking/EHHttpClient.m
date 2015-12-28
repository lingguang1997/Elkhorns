//
//  EHHttpClient.m
//  AppKit
//
//  Created by Zijiao Liu on 12/25/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHHttpClient.h"

static NSString * const kBaseURL = @"";
static NSString * const kLoginURL = @"";
static NSString * const kExploreURL = @"";
static NSString * const kHotSearchesURL = @"";
static NSString * const kRecentSearchesURL = @"";
static NSString * const kSearchURL = @"";
static NSString * const kProfileURL = @"";

@implementation EHHttpClient

+ (instancetype)sharedHttpClient {
    static EHHttpClient *httpClient = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        httpClient = [[EHHttpClient alloc] initWithBaseURL:[NSURL URLWithString:kBaseURL]];
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
    [self POST:kLoginURL parameters:nil progress:nil success:^(NSURLSessionDataTask * task, id  responseObject) {
       } failure:^(NSURLSessionDataTask * task, NSError * error) {
    }];
}

- (void)loadExploreWithSuccessBlock:(void (^)())success failureBlock:(void (^)())failure {
    [self POST:kExploreURL parameters:nil progress:nil success:^(NSURLSessionDataTask * task, id responseObject) {
        success();
       } failure:^(NSURLSessionDataTask * task, NSError * error) {
           failure();
    }];
}

- (void)loadHotSearches {
    [self POST:kHotSearchesURL parameters:nil progress:nil success:^(NSURLSessionDataTask * task, id  responseObject) {
       } failure:^(NSURLSessionDataTask * task, NSError * error) {
    }];
}

- (void)loadRecentSearches {
    [self POST:kRecentSearchesURL parameters:nil progress:nil success:^(NSURLSessionDataTask * task, id  responseObject) {
       } failure:^(NSURLSessionDataTask * task, NSError * error) {
    }];
}

- (void)searchWithQuery:(NSString *)query {
    [self POST:kSearchURL parameters:nil progress:nil success:^(NSURLSessionDataTask * task, id  responseObject) {
       } failure:^(NSURLSessionDataTask * task, NSError * error) {
    }];
}

- (void)loadProfile {
    [self POST:kProfileURL parameters:nil progress:nil success:^(NSURLSessionDataTask * task, id  responseObject) {
       } failure:^(NSURLSessionDataTask * task, NSError * error) {
    }];
}

@end
