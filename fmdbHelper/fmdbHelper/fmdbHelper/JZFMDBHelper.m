//
//  JZFMDBHelper.m
//  fmdbHelper
//
//  Created by Frankenstein Yang on 6/16/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "JZFMDBHelper.h"
#import "FMDB.h"

@implementation JZFMDBHelper

static FMDatabaseQueue *_queue;

+ (void)initialize {
    // 获取沙盒中的数据库文件名
    NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"vipOne.sqlite"];
    // 在多个线程执行查询和更新，避免同时访问同一数据
    _queue = [FMDatabaseQueue databaseQueueWithPath:path];
}

+ (void)dropTable:(NSString *)tableName {

}

+ (void)createTable:(NSString *)tableName withSqlParamDict:(NSDictionary *)dict {

}

+ (void)insertIntoTable:(NSString *)tableName withTableMap:(NSDictionary *)tableMap {

}

@end
