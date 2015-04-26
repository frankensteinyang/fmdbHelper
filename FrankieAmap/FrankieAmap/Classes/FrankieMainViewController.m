//
//  FrankieMainViewController.m
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/6/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "FrankieMainViewController.h"
#import <MAMapKit/MAMapKit.h>

#define MAP_COORDINATE_SPAN         0.0265

@interface FrankieMainViewController () <MAMapViewDelegate> {

    MAAnnotationView *_userLocationView;
}

@property (weak, nonatomic) IBOutlet MAMapView *mapView;
@property (strong, nonatomic) MAPointAnnotation *centerAnno;
@property (strong, nonatomic) MAPinAnnotationView *pinAnnoView;

@end

@implementation FrankieMainViewController

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    self.mapView.showsCompass = NO;
    self.mapView.showsScale = NO;
    self.mapView.scrollEnabled = NO;
    self.mapView.delegate = self;
//    self.mapView.userLocation.coordinate = CLLocationCoordinate2DMake(31.0, 121.0);
    // UITapGestureRecognizer
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    NSLog(@"Frankenstein Yang!");

}

- (void)viewWillDisappear:(BOOL)animated {
    
    NSLog(@"Frankenstein Yang!");

}

- (void)awakeFromNib {
    
    NSLog(@"Frankenstein Yang!");
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createNavigationBar];
    _mapView.mapType = MAMapTypeStandard;
    _mapView.userTrackingMode = MAUserTrackingModeFollow;
    _mapView.delegate = self;
    _mapView.showsCompass = YES;
    _mapView.showsScale = YES;
    _mapView.centerCoordinate = CLLocationCoordinate2DMake(31.220032, 121.369915);
    
    // 不显示定位点
    CLLocationCoordinate2D userLocation = CLLocationCoordinate2DMake(31.220032, 121.369915);
    MACoordinateSpan span = MACoordinateSpanMake(MAP_COORDINATE_SPAN, MAP_COORDINATE_SPAN);
    MACoordinateRegion region = {userLocation, span};
    [_mapView setRegion:region animated:NO];
    _mapView.showsUserLocation = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  不进代理方法
 *
 *  @param mapView          <#mapView description#>
 *  @param userLocation     <#userLocation description#>
 *  @param updatingLocation <#updatingLocation description#>
 */
- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation updatingLocation:(BOOL)updatingLocation {
    
    NSLog(@"BUG:代理方法没有实现。FrankieMapHelper");
    if (updatingLocation) {
//        NSLog(@"Latitude : %f, Longitude: %f", userLocation.coordinate.latitude, userLocation.coordinate.longitude);
    }
    
}

// BUG定位，不走代理方法
- (MAAnnotationView *)mapView:(MAMapView *)mapView viewForAnnotation:(id<MAAnnotation>)annotation {

    MAAnnotationView *userLocationView = (MAAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"userLocationView"];
    userLocationView = [[MAAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"userLocationView"];
    userLocationView.image = [UIImage imageNamed:@"AccuracyCircle.png"];
    return userLocationView;
    
}

/**
 *  <#Description#>
 *
 *  @param mapView      <#mapView description#>
 *  @param userLocation <#userLocation description#>
 */
- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation {

    NSLog(@"BUG:代理方法没有实现。FrankieMapHelper");
    if (userLocation) {
        NSLog(@"Latitude : %f, Longitude: %f", userLocation.coordinate.latitude, userLocation.coordinate.longitude);
    }
    
}

/**
 *  创建导航条
 */
- (void)createNavigationBar
{
    UINavigationController *naviC = [[UINavigationController alloc] init];
    naviC.title = @"地图";
    
}

/**
 *  <#Description#>
 *
 *  @param mapView <#mapView description#>
 *  @param view    <#view description#>
 *  @param control <#control description#>
 */
- (void)mapView:(MAMapView *)mapView annotationView:(MAAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {

}

- (void)mapView:(MAMapView *)mapView annotationView:(MAAnnotationView *)view didChangeDragState:(MAAnnotationViewDragState)newState fromOldState:(MAAnnotationViewDragState)oldState {

}

- (void)mapView:(MAMapView *)mapView regionDidChangeAnimated:(BOOL)animated {

}

- (void)mapView:(MAMapView *)mapView regionWillChangeAnimated:(BOOL)animated {

}

- (void)mapViewDidStopLocatingUser:(MAMapView *)mapView {

}

- (void)mapViewWillStartLocatingUser:(MAMapView *)mapView {

}

- (void)mapView:(MAMapView *)mapView didAddAnnotationViews:(NSArray *)views {

}

- (void)mapView:(MAMapView *)mapView didChangeUserTrackingMode:(MAUserTrackingMode)mode animated:(BOOL)animated {

}

- (void)mapView:(MAMapView *)mapView didFailToLocateUserWithError:(NSError *)error {

}

- (void)mapView:(MAMapView *)mapView didSelectAnnotationView:(MAAnnotationView *)view {

}

@end
