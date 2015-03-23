//
//  FrankieGoogleMapsMainViewController.m
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/18/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieGoogleMapsMainViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@implementation FrankieGoogleMapsMainViewController {

    NSArray *demos_;
    NSArray *demoSections_;
    BOOL isPhone_;
    
}

- (void)viewDidLoad {

    [super viewDidLoad];
    isPhone_ = [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone;
    if (!isPhone_) {
        self.clearsSelectionOnViewWillAppear = NO;
    } else {
        UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"Back", @"Back")
                                                                       style:UIBarButtonItemStyleDone target:nil
                                                                      action:nil];
        [self.navigationItem setBackBarButtonItem:backButton];
    }
    self.title = NSLocalizedString(@"Google Maps SDK Demos.", @"Google Maps SDK Demos.");
    self.title = [NSString stringWithFormat:@"%@: %@", self.title, [GMSServices SDKVersion]];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
}

#pragma mark - UITableViewController
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return demoSections_.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {

    return 35.0;
    
}

@end
