//
//  CKUserDefaultCenter.m
//  CKYSTemplate
//
//  Created by Yan on 2018/9/6.
//  Copyright © 2018年 YY. All rights reserved.
//

#import "CKUserDefaultCenter.h"

@interface CKUserDefaultCenter()

@property (nonatomic, strong) NSUserDefaults *userDefaultCenter;

@end

@implementation CKUserDefaultCenter

- (instancetype)init {
    if (self = [super init]) {
        self.userDefaultCenter = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

+ (CKUserDefaultCenter *)userDefaultCenter {
    static CKUserDefaultCenter *center = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        center = [[self alloc] init];
    });
    
    return center;
}

- (nullable NSUserDefaults *)systemUserDefaults {
    return self.userDefaultCenter;
}

- (BOOL)boolForKey:(NSString *)key {
    if ([self p_validKey:key]) {
        return [self.userDefaultCenter boolForKey:key];
    }
    
    return NO;
}

- (float)floatForKey:(NSString *)key {
    if ([self p_validKey:key]) {
        return [self.userDefaultCenter floatForKey:key];
    }
    
    return 0.0;
}

- (double)doubleForKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        return [self.userDefaultCenter doubleForKey:key];
    }
    
    return 0.0;
}

- (long long)longlongForKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        id value = [self.userDefaultCenter valueForKey:key];
        
        if (value && [value respondsToSelector:@selector(longLongValue)]) {
            return [value longLongValue];
        }
    }
    
    return -1;
}

- (NSInteger)integerForKey:(NSString *)key {
    if ([self p_validKey:key]) {
        return [self.userDefaultCenter integerForKey:key];
    }
    
    return -1;
}

- (NSString *)stringForKey:(NSString *)key {
    if ([self p_validKey:key]) {
        return [self.userDefaultCenter stringForKey:key];
    }
    
    return @"";
}

- (NSArray <NSString *> *)arrayForKey:(NSString *)key {
    if ([self p_validKey:key]) {
        return [self.userDefaultCenter arrayForKey:key];
    }
    
    return @[];
}

- (nullable NSDictionary <NSString *,id> *)dictionaryForKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        return [self.userDefaultCenter dictionaryForKey:key];
    }
    
    return @{};
}

- (nullable NSDate *)dateForKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        NSDate *value = [self.userDefaultCenter objectForKey:key];
        
        if (value && [value isKindOfClass:[NSDate class]]) {
            return value;
        }
    }
    
    return nil;
}

- (nullable id)objectForKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        return [self.userDefaultCenter objectForKey:key];
    }
    
    return nil;
}

- (void)setBool:(BOOL)value forKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        [self.userDefaultCenter setBool:value forKey:key];
    }
}

- (void)setInteger:(NSInteger)value forKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        [self.userDefaultCenter setInteger:value forKey:key];
    }
}

- (void)setFloat:(float)value forKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        [self.userDefaultCenter setFloat:value forKey:key];
    }
}

- (void)setDouble:(double)value forKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        [self.userDefaultCenter setDouble:value forKey:key];
    }
}

- (void)setLongLong:(long long)value forKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        [self.userDefaultCenter setObject:[NSNumber numberWithLongLong:value] forKey:key];
    }
}

- (void)setString:(nullable NSString *)value forKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        [self.userDefaultCenter setValue:value forKey:key];
    }
}

- (void)setArray:(nullable NSArray <NSString *> *)value forKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        [self.userDefaultCenter setValue:value forKey:key];
    }
}

- (void)setDictionary:(nullable NSDictionary <NSString *,id> *)value forKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        [self.userDefaultCenter setValue:value forKey:key];
    }
}

- (void)setDate:(nullable NSDate *)value forKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        [self.userDefaultCenter setValue:value forKey:key];
    }
}

- (void)setObject:(nullable id)value forKey:(nullable NSString *)key {
    if ([self p_validKey:key]) {
        [self.userDefaultCenter setObject:value forKey:key];
    }
}

- (BOOL)synchronize {
    BOOL success = [self.userDefaultCenter synchronize];
    
    return success;
}

#pragma mark -
#pragma mark Private

- (BOOL)p_validKey:(NSString *)key {
    return (key && key.length > 0);
}

@end

