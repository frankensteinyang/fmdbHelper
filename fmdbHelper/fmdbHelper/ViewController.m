//
//  ViewController.m
//  fmdbHelper
//
//  Created by Frankenstein Yang on 6/16/15.
//  Copyright (c) 2015 Frankenstein Yang. All rights reserved.
//

#import "ViewController.h"
#import "JZFMDBHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"TEXT", @"NAME", nil];
    [JZFMDBHelper createTable:@"t_Jinzhong" withSqlParamDict:dict];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
