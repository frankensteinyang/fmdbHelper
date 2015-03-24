//
//  FrankieGoogleMapsSamples.m
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/24/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieGoogleMapsSamples.h"
#import "FrankieGoogleMapsBasicMapViewController.h"
#import "FrankieGoogleMapsMyLocationViewController.h"

@implementation FrankieGoogleMapsSamples

+ (NSArray *)loadSections {

    return @[@"Map"];
    
}

+ (NSArray *)loadDemos {

    NSArray *mapDemos = @[[self newDemo:[FrankieGoogleMapsBasicMapViewController class] withTitle:@"Basic Map" andDescription:nil],
                          [self newDemo:[FrankieGoogleMapsMyLocationViewController class] withTitle:@"My Location" andDescription:nil]];
    return @[mapDemos];
    
}

+ (NSDictionary *)newDemo:(Class)class withTitle:(NSString *)title andDescription:(NSString *)description {

    return [[NSDictionary alloc] initWithObjectsAndKeys:class, @"controller", title, @"title", description, @"description", nil];
    
}

@end
