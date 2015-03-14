//
//  FrankieBaseMapViewController.h
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/2/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FrankieBaseMapViewController : UIViewController {

    @property (nonatomic, strong) MAMapView *aMapView;
    
    @property (nonatomic, strong) AMapSearchAPI *search;

}



@end
