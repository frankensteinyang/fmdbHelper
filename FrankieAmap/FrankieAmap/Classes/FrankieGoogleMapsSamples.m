//
//  FrankieGoogleMapsSamples.m
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/24/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieGoogleMapsSamples.h"

@implementation FrankieGoogleMapsSamples

+ (NSArray *)loadSections {

    return @[@"Map", @"Camera"];
    
}

+ (NSArray *)loadDemos {

//    NSArray *mapDemos = @[[self]];
    return @[mapDemos, cameraDemos];
    
}

+ (NSDictionary *)newDemo:(Class)class withTitle:(NSString *)title andDescription:(NSString *)description {

    return [[NSDictionary alloc] initWithObjectsAndKeys:class, @"controller", title, @"title", description, @"description", nil];
    
}

@end
