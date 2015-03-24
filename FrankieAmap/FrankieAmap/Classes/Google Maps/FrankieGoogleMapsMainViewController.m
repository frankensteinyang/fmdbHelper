//
//  FrankieGoogleMapsMainViewController.m
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/18/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieGoogleMapsMainViewController.h"
#import <GoogleMaps/GoogleMaps.h>
#import "FrankieGoogleMapsSamples.h"

@implementation FrankieGoogleMapsMainViewController {

    NSArray *demos_;
    NSArray *demoSections_;
    BOOL isPhone_;
    UIBarButtonItem *samplesButton_;
    __weak UIViewController *controller_;
    
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
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    demoSections_ = [FrankieGoogleMapsSamples loadSections];
    demos_ = [FrankieGoogleMapsSamples loadDemos];
    
    if (!isPhone_) {
        [self loadDemo:0 atIndex:0];
    }
    
}

#pragma mark - UITableViewController
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return demoSections_.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {

    return 35.0;
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

    return [demoSections_ objectAtIndex:section];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[demos_ objectAtIndex:section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *cellIdentifier = @"CellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
        if (isPhone_) {
            [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
        }
    }
    NSDictionary *demo = [[demos_ objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    cell.textLabel.text = [demo objectForKey:@"title"];
    cell.detailTextLabel.text = [demo objectForKey:@"description"];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    [self loadDemo:indexPath.section atIndex:indexPath.row];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

#pragma mark - Private methods
- (void)loadDemo:(NSUInteger)section atIndex:(NSUInteger)index {
    
    NSDictionary *demo = [[demos_ objectAtIndex:section] objectAtIndex:index];
    UIViewController *controller = [[[demo objectForKey:@"controller"] alloc] init];
    controller_ = controller;
    if (controller != nil) {
        controller.title = [demo objectForKey:@"title"];
        
        if (isPhone_) {
            [self.navigationController pushViewController:controller animated:YES];
        } else {
            // iPad process
        }
        [self updateSamplesButton];
    }
    
}

- (void)updateSamplesButton {

    controller_.navigationItem.leftBarButtonItem = samplesButton_;
    
}

@end
