//
//  JZFMDBHelper.h
//  fmdbHelper
//
//  Created by Frankenstein Yang on 6/16/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JZFMDBHelper : NSObject

/**
 *  创表
 *
 *  @param tableName 表名
 *  @param dict      表字段和字段数据类型的字典（建议：在创建字典时，不要把数据类型当作key，因为数据类型会重复）
 */
+ (void)createTable:(NSString *)tableName withSqlParamDict:(NSDictionary *)dict;

/**
 *  删表
 *
 *  @param tableName 表名
 */
+ (void)dropTable:(NSString *)tableName;

/**
 *  查询表中所有数据
 *
 *  @param tableName 表名
 */
//+ (void)queryAllFromTable:(NSString *)tableName;

/**
 *  根据where子句进行条件查询
 *
 *  @param tableName 表名
 *  @param condition 查询子句条件
 */
//+ (void)queryFromTable:(NSString *)tableName whereWithCondition:(NSString *)condition;

/**
 *  根据where not子句进行条件查询
 *
 *  @param tableName 表名
 *  @param condition 查询子句条件
 */
//+ (void)queryFromTable:(NSString *)tableName whereDoesNotWithCondition:(NSString *)condition;

/**
 *  根据where and子句进行条件查询
 *
 *  @param tableName      表名
 *  @param whereCondition where条件
 *  @param andCondition   and条件
 */
//+ (void)queryFromTable:(NSString *)tableName whereWithCondition:(NSString *)whereCondition andGoesWithCondition:(NSString *)andCondition;

/**
 *  根据条件进行降序/升序排列查询
 *
 *  @param tableName 表名
 *  @param condition 排序参照条件
 *  @param order     降序/升序
 */
//+ (void)sortFromTable:(NSString *)tableName OrderBy:(NSString *)condition withDescOrAsc:(NSString *)order;

/**
 *  表数据插入操作
 *
 *  @param tableName 表名
 *  @param tablemap  表字段和表数值的映射字典
 */
+ (void)insertIntoTable:(NSString *)tableName withTableMap:(NSDictionary *)tableMap;

//
//select * from table1 where year(出身日期)=1987 //查询table1 中所有出身在1987的人select * from table1 where name like '%张' /'%张%' /'张%' //查询1，首位字‘张’3，尾位字‘张’2，模糊查询
//
//select * from table1 order by money desc //查询表1按照工资的降序排列表1 (升序为asc)
//
//select * from table1 where brithday is null //查询表1 中出身日期为空的人

@end
