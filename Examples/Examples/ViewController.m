//
//  ViewController.m
//  Examples
//
//  Created by Aka on 2017/8/10.
//  Copyright © 2017年 Aka. All rights reserved.
//

#import "ViewController.h"
#import <YDBluetoothWebBridge/YDBridgeWebViewController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"网页接入" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onTestClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 100, 100, 100);
    
}

- (void)onTestClicked {
    YDBridgeWebViewController *vc = [YDBridgeWebViewController new];
    vc.urlString = @"http://192.168.11.127:8000/bluetoothhtml/YDPeripheralList.html";// 网页所在的地址
    vc.type = YDWebViewTypeBluetooth; // 表示蓝牙的页面
    vc.bluetoothBusinessType = 0;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
