//
//  ServiceModule.h
//  Pods-ServiceModule_Example
//
//  Created by KimeeMacmini on 2019/7/4.
//  本项目将CTMediator语法规范及相关命名做了变更，源码地址：https://github.com/casatwy/CTMediator

#import <UIKit/UIKit.h>

extern NSString * _Nullable const kServiceParametersKey;

NS_ASSUME_NONNULL_BEGIN

@interface ServiceModule : NSObject

+ (instancetype)sharedService;

// 远程App调用入口
- (id)performTaskWithUrl:(nullable NSURL *)url completion:(void(^)(NSDictionary *info))completion;
// 本地组件调用入口
- (id)performService:(NSString *)serviceName task:(NSString *)taskName params:(nullable NSDictionary *)params shouldCacheService:(BOOL)shouldCacheService;
- (void)releaseCachedServiceWithServiceName:(NSString *)serviceName;

@end

NS_ASSUME_NONNULL_END
