//
//  A_Service.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/16.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class A_ServiceParameter, CKYSourceCenterServiceResult;

@interface A_Service : NSObject

+ (void)getResourceDataServiceWithParameter:(A_ServiceParameter *)parameter completeHandle:(void(^)(CKYSourceCenterServiceResult *sourceCenterResult))completeHandle failure:(void(^)(NSError *error))failure;

@end 

NS_ASSUME_NONNULL_END
