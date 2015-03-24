//
//  FrankieGoogleMapsMyLocationViewController.m
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/24/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieGoogleMapsMyLocationViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface FrankieGoogleMapsMyLocationViewController ()

@end

@implementation FrankieGoogleMapsMyLocationViewController {

    GMSMapView *mapView_;
    BOOL firstLocationUpdate_;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:31.249181 longitude:121.448657 zoom:12];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.settings.compassButton = YES;
    mapView_.settings.myLocationButton = YES;
    [mapView_ addObserver:self forKeyPath:@"myLocation" options:NSKeyValueObservingOptionNew context:NULL];
    self.view = mapView_;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        mapView_.myLocationEnabled = YES;
    });
    
}

- (void)dealloc {
    
    [mapView_ removeObserver:self forKeyPath:@"myLocation" context:NULL];
    
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

#pragma mark - KVO updates
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    if (!firstLocationUpdate_) {
        firstLocationUpdate_ = YES;
        CLLocation *location = [change objectForKey:NSKeyValueChangeNewKey];
        mapView_.camera = [GMSCameraPosition cameraWithTarget:location.coordinate zoom:14];
    }
    
}

@end
