//
//  NSNilObjectHelper.m
//  CKYSTemplate
//
//  Created by Yan on 2018/11/5.
//  Copyright © 2018 YY. All rights reserved.
//

#import "NSNilObjectHelper.h"

@implementation NSNilObjectHelper

+ (BOOL)isNilOrNullObject:(id)obj {
    
    return (((obj) == nil) || ([(obj) isEqual:[NSNull null]]) || ([(obj) isKindOfClass:[NSNull class]]) || ([(obj) isEqualToString:@"(null)"]) || ([(obj) isEqualToString:@""]) || ([(obj) isEqualToString:@"null"]) || ([(obj) isEqualToString:@"<null>"]));
}

@end
