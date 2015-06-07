//
//  InterfaceController.m
//  FrankieAmap WatchKit Extension
//
//  Created by Frankenstein Yang on 5/15/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    NSLog(@"Frankenstein------------1");
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSLog(@"Frankenstein------------2");
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
    NSLog(@"Frankenstein------------3");
}

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex
{
    NSLog(@"Frankenstein------------4");
}

@end



