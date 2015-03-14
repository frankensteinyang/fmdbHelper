//
//  FrankieBaseMapViewController.h
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/2/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MAMapKit/MAMapKit.h>

@interface FrankieBaseMapViewController : UIViewController <MAMapViewDelegate>

@property (nonatomic, strong) MAMapView *aMapView;

@end
