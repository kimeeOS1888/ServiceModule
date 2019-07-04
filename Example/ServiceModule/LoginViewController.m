//
//  LoginViewController.m
//  ServiceModule_Example
//
//  Created by KimeeMacmini on 2019/7/4.
//  Copyright © 2019 574068650@qq.com. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = self.parameters[@"title"];
    self.view.backgroundColor = UIColor.whiteColor;
    
    NSLog(@"接收外部传参%@", self.parameters);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    __block void (^callback)(void) = self.parameters[@"callback"];
    [self dismissViewControllerAnimated:YES completion:^{
        if (callback) {
            callback();
        }
        NSLog(@"回传参数：%@", callback);
    }];
}

@end
