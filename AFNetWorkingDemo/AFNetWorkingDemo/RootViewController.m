//
//  RootViewController.m
//  AFNetWorkingDemo
//
//  Created by zhanght on 2016/11/23.
//  Copyright © 2016年 zhanght. All rights reserved.
//

#import "RootViewController.h"
#import "AFNetworking.h"


#define BASE_URL @"http://www.mocky.io/v2"
#define DETAIL_URL @"/58354200110000b0010bfec9"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor orangeColor];

    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:DETAIL_URL parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"-- ht log -- downloadProgress");
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"-- ht log -- success");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"-- ht log -- failure");
    }];
    
    
    [manager POST:DETAIL_URL parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"-- ht log -- downloadProgress");
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"-- ht log -- success");
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"-- ht log -- failure");
    }];

}



@end
