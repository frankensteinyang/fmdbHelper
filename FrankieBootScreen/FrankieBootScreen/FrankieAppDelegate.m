//
//  FrankieAppDelegate.m
//  FrankieBootScreen
//
//  Created by Frankenstein Yang on 2/13/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieAppDelegate.h"
#import "FrankieSplashViewController.h"

@implementation FrankieAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self initialApp];
    return YES;
    
}

- (void)initialApp {
    
    FrankieSplashViewController *splashViewController = [[FrankieSplashViewController alloc] initWithNibName:@"FrankieSplashViewController" bundle:nil];
    [self.window setRootViewController:splashViewController];
    [self.window makeKeyAndVisible];
    
    
}

@end
