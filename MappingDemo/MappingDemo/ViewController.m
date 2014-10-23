//
//  ViewController.m
//  MappingDemo
//
//  Created by wadexiong on 14/10/23.
//  Copyright (c) 2014年 xiong. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "MappingUtil.h"

#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Person * p = [[Person alloc] init];
    p.pid = 10;
    p.name = @"zhangsan";
    p.habits = @[@"篮球", @"棒球", @"电影"];
    
    [MappingUtil getPropertiesOfClass:[Person class]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
