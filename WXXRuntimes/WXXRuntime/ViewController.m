//
//  ViewController.m
//  WXXRuntime
//
//  Created by linxiaolong on 2017/2/7.
//  Copyright © 2017年 wengxianxun. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableArray+Extension.h"
#import "LogClassInfo.h"
@interface ViewController ()
@property (nonatomic,retain)NSMutableArray *arrayM;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.arrayM = [[NSMutableArray alloc]init];
    [self.arrayM addObject:@"1"];
    [self.arrayM addObject:nil];
    NSLog(@"%@",self.arrayM);
    
    LogClassInfo *lci = [[LogClassInfo alloc]init];
    [lci LogInfo];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
