//
//  LogClassInfo.m
//  WXXRuntime
//
//  Created by linxiaolong on 2017/2/7.
//  Copyright © 2017年 wengxianxun. All rights reserved.
//

#import "LogClassInfo.h"
#import <objc/runtime.h>
@interface LogClassInfo()
@property (nonatomic,retain)NSString *name;
@end


@implementation LogClassInfo

-(void)LogInfo{
    
    unsigned int count;
    
    objc_property_t *propertyList = class_copyPropertyList([self class], &count);
    for (int i=0; i<count; i++) {
        const char *propertyname = property_getName(propertyList[i]);
        NSLog(@"property----="">%@", [NSString stringWithUTF8String:propertyname]);
    
    }
    
    
    Method *methodList = class_copyMethodList([self class], &count);
    for (int i=0; i<count; i++) {
        Method method = methodList[i];
        NSLog(@"%@",NSStringFromSelector(method_getName(method)));
    }
}

@end
