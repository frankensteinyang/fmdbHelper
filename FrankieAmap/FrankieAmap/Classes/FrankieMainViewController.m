//
//  FrankieMainViewController.m
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/6/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieMainViewController.h"
#import <MAMapKit/MAMapKit.h>

@interface FrankieMainViewController () <MAMapViewDelegate>

@property (weak, nonatomic) IBOutlet MAMapView *mapView;
@property (strong, nonatomic) MAPointAnnotation *centerAnno;
@property (strong, nonatomic) MAPinAnnotationView *pinAnnoView;

@end

@implementation FrankieMainViewController

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    self.mapView.showsCompass = NO;
    self.mapView.showsScale = NO;
    
    // UITapGestureRecognizer
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _mapView.mapType = MAMapTypeStandard;
    _map
    _mapView.userTrackingMode = MAUserTrackingModeFollow;
    _mapView.centerCoordinate = CLLocationCoordinate2DMake(31.220032, 121.369915);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation updatingLocation:(BOOL)updatingLocation {
    
    if (updatingLocation) {
        NSLog(@"Latitude : %f, Longitude: %f", userLocation.coordinate.latitude, userLocation.coordinate.longitude);
    }
    
}

@end
