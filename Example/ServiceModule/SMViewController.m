//
//  SMViewController.m
//  ServiceModule
//
//  Created by 574068650@qq.com on 07/04/2019.
//  Copyright (c) 2019 574068650@qq.com. All rights reserved.
//

#import "SMViewController.h"
#import "ServiceModule+Login.h"

@interface SMViewController ()

@end

@implementation SMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    // callback 传参也可以单独写一个代码块
    
    UIViewController *vc = [ServiceModule.sharedService loginViewController:@{@"title" : @"传参测试",
                                                                              @"image" : UIImage.alloc.init,
                                                                              @"callback" : ^() {
        NSLog(@"callback");
    }
                                                                              }];
    UINavigationController *nav = [UINavigationController.alloc initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}

@end
