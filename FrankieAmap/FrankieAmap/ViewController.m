//
//  ViewController.m
//  FrankieAmap
//
//  Created by Frankenstein Yang on 2/27/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "ViewController.h"
#import <MAMapKit/MAMapKit.h>

@interface ViewController () <MAMapViewDelegate> {

    MAMapView *_mapView;
    
}

@end

@implementation ViewController

/**
 *  .构造MAMapView对象；
 
 2.设置代理；
 
 3.将MAMapView添加到Subview中。
 */

- (void)viewDidAppear:(BOOL)animated {

    [super viewDidAppear:animated];
    [MAMapServices sharedServices].apiKey = @"8eb3e00b5959c32ca542f97a6de80e5f";
    _mapView = [[MAMapView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds))];
    _mapView.delegate = self;
    [self.view addSubview:_mapView];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
