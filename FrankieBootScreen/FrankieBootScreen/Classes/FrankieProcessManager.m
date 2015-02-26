//
//  FrankieProcessManager.m
//  FrankieBootScreen
//
//  Created by Frankenstein Yang on 2/26/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieProcessManager.h"

static FrankieProcessManager *instance;

@implementation FrankieProcessManager

- (id)init {

    if (!instance) {
        self = [super init];
        instance = self;
    }
    return instance;
    
}

+ (FrankieProcessManager *)shareManager {

    if (!instance) {
        instance = [[FrankieProcessManager alloc] init];
    }
    return instance;
    
}



@end
