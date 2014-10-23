//
//  DAOTool.h
//  JYLibrary
//
//  Created by nero on 14-10-23.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DAOTool : NSObject
//
/**
 *  返回CoreData数据操作的上下文，负责所有的数据操作，类似于SQLite的数据库连接句柄
 *
 *  @param db <#db description#>
 *
 *  @return <#return value description#>
 */
/**
*  <#Description#>
*
*  @param db     databaseName
*  @param bundle bundle 如果为nil  默认为mainbundle
*
*  @return 返回CoreData数据操作的上下文，负责所有的数据操作，类似于SQLite的数据库连接句柄
*/
- (NSManagedObjectContext *)openDatabase:(NSString *)db inBundle:(NSBundle *)bundle;
@end
