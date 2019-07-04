//
//  ServiceModule+Login.h
//  ServiceModule_Example
//
//  Created by KimeeMacmini on 2019/7/4.
//  Copyright © 2019 574068650@qq.com. All rights reserved.
//

#import <ServiceModule/ServiceModule.h>

NS_ASSUME_NONNULL_BEGIN

@interface ServiceModule (Login)

- (UIViewController *)loginViewController:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
