//
//  FrankieNoticeBase.h
//  FrankieBootScreen
//
//  Created by Frankenstein Yang on 2/26/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FrankieNoticeCodeDefine.h"

@interface FrankieNoticeBase : NSObject

@property (readonly) NoticeCodeType noticeCode;

@property (readonly) NoticePriorityType priority;

@end
