//
//  ViewController.m
//  Examples
//
//  Created by Aka on 2017/8/10.
//  Copyright © 2017年 Aka. All rights reserved.
//

#import "ViewController.h"
#import <YDBluetoothWebBridge/YDBridgeWebViewController.h>
#import <YDBluetoothWebBridge/YDDefine.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"S3蓝牙" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(toThirdPartVC:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 100, 100, 30);


}

- (void)toThirdPartVC:(id)sender {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"YDPeripheralList.html" ofType:nil];
    NSString *htmlString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    YDBridgeWebViewController *vc = [YDBridgeWebViewController new];
    vc.urlString = htmlString;
    vc.type = YDWebViewTypeBluetooth;
    vc.bluetoothBusinessType = 0;
    [self.navigationController pushViewController:vc animated:YES];
}

//for test

- (void)onLoadHtmlNotify:(NSNotification *)noti {
    NSString *urlString = noti.object;
    NSString *filePath = [[NSBundle mainBundle] pathForResource:urlString ofType:nil];
    NSString *htmlString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:YDNtfLoadHtml object:htmlString];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
