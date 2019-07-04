//
//  LoginService.m
//  ServiceModule_Example
//
//  Created by KimeeMacmini on 2019/7/4.
//  Copyright © 2019 574068650@qq.com. All rights reserved.
//

#import "LoginService.h"
#import "LoginViewController.h"

@implementation LoginService

- (UIViewController *)loginViewController:(NSDictionary *)parameters {
    LoginViewController *vc = LoginViewController.alloc.init;
    vc.parameters = parameters;
    return vc;
}

@end
