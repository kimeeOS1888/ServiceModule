//
//  ServiceModule+Login.m
//  ServiceModule_Example
//
//  Created by KimeeMacmini on 2019/7/4.
//  Copyright © 2019 574068650@qq.com. All rights reserved.
//

#import "ServiceModule+Login.h"

@implementation ServiceModule (Login)

- (UIViewController *)loginViewController:(NSDictionary *)params {
    UIViewController *vc = [self performService:@"LoginService"
                                           task:@"loginViewController"
                                         params:params
                             shouldCacheService:NO];
    
    return vc;
}

@end
