//
//  FrankieMapManager.m
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/5/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieMapManager.h"

@implementation FrankieMapManager

- (CLLocation *)getLastCLocation
{
    CLLocation *location = nil;
    NSString *latString = [BTKeychainHelper getStringForKey:KEYCHAIN_LAST_LAT];
    NSString *lngString = [BTKeychainHelper getStringForKey:KEYCHAIN_LAST_LNG];
    if (latString && lngString)
    {
        location = [[CLLocation alloc] initWithLatitude:[latString floatValue] longitude:[lngString floatValue]];
    }
    return location;
}

@end
