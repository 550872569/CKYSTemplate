//
//  LoginService.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import "LoginService.h"
#import "LoginServiceParameter.h"
#import "LoginServiceResult.h"
#import "NSMutableDictionary+Safe.h"
#import "NetworkDNSConst.h"

@implementation LoginService

#define LOGIN_SERVICE_URL_CONST @""

+ (void)loginRequestServerWithParameter:(LoginServiceParameter *)parameter completeHandle:(void(^)(LoginServiceResult *loginServiceResult))completeHandle failure:(void(^)(NSError *error))failure {
    
    NSString *LOGIN_SERVICE_URL_STRING = [NSString stringWithFormat:@"%@%@",ROOT_URL,LOGIN_SERVICE_URL_CONST];
    NSMutableDictionary *login_parameter = [NSMutableDictionary dictionary];
    [login_parameter safeSetObject:parameter.userLoginId forKey:@"userLoginId"];
    [login_parameter safeSetObject:parameter.password forKey:@"password"];

    [self postRequestServerWithUrl:LOGIN_SERVICE_URL_STRING parameter:login_parameter completeHandle:^(id  _Nonnull result) {
#warning todo...data from server
        LoginServiceResult *login_service_result = [[LoginServiceResult alloc] init];
        if (completeHandle) {
            completeHandle(login_service_result);
        }
    } failure:^(NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
}

@end
