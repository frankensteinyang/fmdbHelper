//
//  FrankieGoogleMapsBasicMapViewController.m
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/24/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieGoogleMapsBasicMapViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface FrankieGoogleMapsBasicMapViewController ()

@end

@implementation FrankieGoogleMapsBasicMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:31.249181 longitude:121.448657 zoom:6];
    self.view = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
