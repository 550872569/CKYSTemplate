//
//  UIViewController+LoadingView.m
//  CKYSPlatform
//
//  Created by Yan on 2018/7/12.
//  Copyright © 2018年 ckys. All rights reserved.
//

#import "UIViewController+LoadingView.h"
#import "objc/runtime.h"

@interface UIViewController ()

@property (nonatomic, strong) UIView *loadingView;

@end

@implementation UIViewController (LoadingView)

static const void *CKYSLoadingViewKey = &CKYSLoadingViewKey;

- (void)setLoadingView:(UIView *)loadingView {
    objc_setAssociatedObject(self, CKYSLoadingViewKey, loadingView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)loadingView {
   return objc_getAssociatedObject(self, CKYSLoadingViewKey);
}

- (void)startLoading {
    if (!self.loadingView) {
        self.loadingView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    }
    [[UIApplication sharedApplication].keyWindow addSubview:self.loadingView];
//    [self.loadingView startAnimation];
}

- (void)stopLoading {
//    [self.loadingView stopAnimation];
}

@end
