//
//  FrankieAppDelegate.m
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/23/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieAppDelegate.h"
#import "FrankieAMapAPIKey.h"
#import "FrankieMainViewController.h"
#import "FrankieGoogleMapsAPIKey.h"
#import "FrankieGoogleMapsMainViewController.h"
#import <MAMapKit/MAMapKit.h>
#import <GoogleMaps/GoogleMaps.h>


@interface FrankieAppDelegate ()

@end

@implementation FrankieAppDelegate {

    id services_;
    
}

- (void)configureAMapAPIKey {

    if ([APIKey length] == 0)
    {
        NSString *reason = [NSString stringWithFormat:@"Frankenstein! Testing!"];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:reason delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        
        [alert show];
    }
    
    FrankieMainViewController *mainVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"FrankieMainViewController"];
    UINavigationController *rootController = [[UINavigationController alloc] initWithRootViewController:mainVC];
    
    [MAMapServices sharedServices].apiKey = (NSString *)APIKey;
    
}

- (void)configureGoogleMapsAPIKey
{
    if ([kAPIKey length] == 0)
    {
        NSString *bundleId = [[NSBundle mainBundle] bundleIdentifier];
        NSString *format = @"Configure APIKey inside FrankieGoogleMapsAPIKey.h for your "
        @"bundle `%@`, see Readme.h for more information";
        @throw [NSException exceptionWithName:@"FrankieAppDelegate"
                                       reason:[NSString stringWithFormat:format, bundleId]
                                     userInfo:nil];
    }
    
    [GMSServices provideAPIKey:kAPIKey];
    services_ = [GMSServices sharedServices];
    NSLog(@"Open source licenses:\n%@", [GMSServices openSourceLicenseInfo]);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    FrankieGoogleMapsMainViewController *master = [[FrankieGoogleMapsMainViewController alloc] init];
    master.appDelegate = self;
    
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.navigationController = [[UINavigationController alloc] initWithRootViewController:master];
        self.navigationController.navigationBar.translucent = NO;
        self.window.rootViewController = self.navigationController;
    } else {
        UINavigationController *masterNavigationController = [[UINavigationController alloc] initWithRootViewController:master];
        UIViewController *empty = [[UIViewController alloc] init];
        UINavigationController *detailNavigationController = [[UINavigationController alloc] initWithRootViewController:empty];
        detailNavigationController.navigationBar.translucent = NO;
        self.splitViewController = [[UISplitViewController alloc] init];
        self.splitViewController.delegate = master;
        self.splitViewController.viewControllers = @[masterNavigationController, detailNavigationController];
        self.splitViewController.presentsWithGesture = NO;
        self.window.rootViewController = self.splitViewController;
    }
    [self.window makeKeyAndVisible];
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 高德地图
    [self configureAMapAPIKey];
    
    // Google地图
//    [self configureGoogleMapsAPIKey];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
