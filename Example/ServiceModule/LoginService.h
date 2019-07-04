//
//  LoginService.h
//  ServiceModule_Example
//
//  Created by KimeeMacmini on 2019/7/4.
//  Copyright © 2019 574068650@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginService : NSObject

- (UIViewController *)loginViewController:(NSDictionary *)parameters;

@end

NS_ASSUME_NONNULL_END
