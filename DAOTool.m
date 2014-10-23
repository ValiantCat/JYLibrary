//
//  DAOTool.m
//  JYLibrary
//
//  Created by nero on 14-10-23.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//

#import "DAOTool.h"
#import <CoreData/CoreData.h>
@implementation DAOTool
- (NSManagedObjectContext *)openDatabase:(NSString *)db inBundle:(NSBundle *)bundle
{
    
    /*
     回顾SQLite的操作方式（持久化）
     
     1. opendb打开数据库，如果第一次运行，会在沙盒中创建数据库
     2. 打开数据库之后，会生成一个数据库连接的句柄->_db，后续的数据库操作均基于该句柄进行
     3. 创建数据表(IF NOT EXISTS)
     
     ** Core Data的操作方式
     1. 将所有定义好的数据模型文件合并成为一个数据模型（NSManagedObjectModel）
     建立起针对实体对应的数据表的SQL语句，以便创建数据表
     2. 用数据模型来创建持久化存储调度，此时就具备了创建表的能力
     3. 为存储调度添加持久化的数据存储（SQLite数据库），如果没有，新建并创建数据表
     如果已经存在，直接打开数据库。
     
     在打开数据库之后，会判断实体当前的结构与数据表的描述结构是否一致，如果不一致，会提示打开失败！
     */
    // 创建数据库
    // 1. 实例化数据模型(将所有定义的模型都加载进来)
    // merge——合并
    if (bundle == nil) {
        bundle = [NSBundle mainBundle];
    }
    NSManagedObjectModel *model = [NSManagedObjectModel mergedModelFromBundles:@[bundle]];
    
    // 2. 实例化持久化存储调度，要建立起桥梁，需要模型
    NSPersistentStoreCoordinator *store = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];
    
    // 3. 添加一个持久化的数据库到存储调度
    // 3.1 建立数据库保存在沙盒的URL
    NSArray *docs = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [docs[0] stringByAppendingPathComponent:db];
    NSURL *url = [NSURL fileURLWithPath:path];
    
    // 3.2 打开或者新建数据库文件
    // 如果文件不存在，则新建之后打开
    // 否者直接打开数据库
    NSError *error = nil;
    [store addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:url options:nil error:&error];
    NSManagedObjectContext *context = nil;
    if (error) {
        NSLog(@"#warning 打开数据库出错 - %@", error.localizedDescription);
    } else {
        NSLog(@"打开数据库成功");
        
        context = [[NSManagedObjectContext alloc] init];
        
        context.persistentStoreCoordinator = store;
    }
    
    return context;
}
@end
