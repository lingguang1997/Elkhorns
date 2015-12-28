//
//  EHExploreStream.m
//  Elkhorn
//
//  Created by Zijiao Liu on 12/28/15.
//  Copyright © 2015 Zijiao Liu. All rights reserved.
//

#import "EHExploreMeal.h"
#import "EHExploreStream.h"
#import "EHHttpClient.h"

@implementation EHExploreStream

- (instancetype)init {
    self = [super init];
    if (self) {
    }
    return self;
}

- (void)update {
    [super update];
    // mock
    self.streamItems = @[@[[EHExploreMeal mockObject]]];
    [self.delegate streamDidUpdate];
//    [[EHHttpClient sharedHttpClient] loadExploreWithSuccessBlock:^{
//        [self.delegate streamDidUpdate];
//    } failureBlock:^{
//    }];
}

@end
