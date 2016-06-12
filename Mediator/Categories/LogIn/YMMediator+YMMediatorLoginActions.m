//
//  YMMediator+YMMediatorLoginActions.m
//  Pods
//
//  Created by YM on 16/6/12.
//
//

#import "YMMediator+YMMediatorLoginActions.h"

NSString *const kMediatorTargetLogin = @"Login";

NSString *const kMediatorActionNativeFetchLoginVC = @"FetchViewControllerLogin";

@implementation YMMediator (YMMediatorLoginActions)

- (UIViewController *)MediatorViewControllerForLogin{
    UIViewController *vc = [self performTarget:kMediatorTargetLogin
                                        action:kMediatorActionNativeFetchLoginVC
                                        params:nil];
    
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    }else{
        //异常
        return [[UIViewController alloc] init];
    }
}

@end
