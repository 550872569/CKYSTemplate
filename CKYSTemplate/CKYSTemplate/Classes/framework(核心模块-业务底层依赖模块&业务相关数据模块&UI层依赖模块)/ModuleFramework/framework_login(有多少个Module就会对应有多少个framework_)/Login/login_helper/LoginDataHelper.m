//
//  LoginDataHelper.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/9.
//  Copyright © 2018 YY. All rights reserved.
//

#import "LoginDataHelper.h"
#import "LoginDataItem.h"

@implementation LoginDataHelper

+ (void)saveLoginDataItem:(LoginDataItem *)loginDataItem {

    //NSKeyedArchiver 类 线程不安全隐藏写操作需要加锁
    @synchronized (self) {
#warning todo... save

        
    }
}

+ (LoginDataItem *)loadLoginDataItem {
    
    @synchronized (self) {
        
    }
    return nil;
}

@end
