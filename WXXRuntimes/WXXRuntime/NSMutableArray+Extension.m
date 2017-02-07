//
//  NSMutableArray+Extension.m
//  WXXRuntime
//
//  Created by linxiaolong on 2017/2/7.
//  Copyright © 2017年 wengxianxun. All rights reserved.
//

#import "NSMutableArray+Extension.h"

#import <objc/runtime.h>
@implementation NSMutableArray(Extension)

//第一次加载自动调用
+(void)load{

    //__NSArrayM 是 NSMutableArray 的真正类型
    Method orginalMethod = class_getInstanceMethod(NSClassFromString(@"__NSArrayM"), @selector(addObject:));
    Method newMethod = class_getInstanceMethod(NSClassFromString(@"__NSArrayM"), @selector(gp_addObject:));
    // 交换方法
    method_exchangeImplementations(orginalMethod, newMethod);
}

/** 自定义实现,防止nil导致程序奔溃 **/
-(void)gp_addObject:(id)object{
    
    if (object != nil) {
        [self gp_addObject:object];
    }
}

@end
