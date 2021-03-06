//
//  A_PlaceHolderViewInterface.h
//  CKYSPlatform
//
//  Created by Yan on 2018/10/30.
//  Copyright © 2018 ckys. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol A_PlaceHolderViewInstanceProtocol <NSObject>

- (instancetype)initWithFrame:(CGRect)frame parentView:(UIView *)parentView;

@end

NS_ASSUME_NONNULL_END
