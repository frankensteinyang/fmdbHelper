//
//  FrankieMapManager.h
//  FrankieAmap
//
//  Created by Frankenstein Yang on 3/5/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FrankieMapManager : NSObject

// 获取最后获取到的位置信息
- (CLLocation *)getLastCLocation;

@end
