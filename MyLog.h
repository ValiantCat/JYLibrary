//
//  MyLog.h
//  JYLibrary
//
//  Created by nero on 14-8-14.
//  Copyright (c) 2014年 姜沂. All rights reserved.
//

#ifndef JYLibrary_MyLog_h
#define JYLibrary_MyLog_h

// 自定义Log代码
#ifdef DEBUG //调试状态
#define MYLog(...) NSLog(__VA_ARGS__)
#else //发布状态
#define MYLog(...)
#endif

#endif
