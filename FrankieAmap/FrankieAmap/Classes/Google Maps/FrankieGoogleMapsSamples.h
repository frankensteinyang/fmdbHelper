//
//  FrankieGoogleMapsSamples.h
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/24/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FrankieGoogleMapsSamples : NSObject

+ (NSArray *)loadSections;
+ (NSArray *)loadDemos;
+ (NSDictionary *)newDemo:(Class) class withTitle:(NSString *)title andDescription:(NSString *)description;

@end
