//
//  LEFETopViewControllerMark.m
//  Example
//
//  Created by Wang,Suyan on 2018/12/19.
//  Copyright © 2018 wsyxyxs@126.com. All rights reserved.
//

#import "LEFETopViewControllerMark.h"
#import "Masonry.h"
#import <objc/runtime.h>

static NSInteger kLefexUIDebugTagOffset = 1923302;

@interface UIView (LefexUIDebug)
@property (nonatomic, strong) NSNumber *isAddAlert;
@end

@implementation UIView (LefexUIDebug)

- (void)setIsAddAlert:(NSNumber *)isAddAlert {
    objc_setAssociatedObject(self, "isAddAlert", isAddAlert, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSNumber *)isAddAlert {
    return objc_getAssociatedObject(self, "isAddAlert");
}

@end

@implementation LEFETopViewControllerMark

+ (void)revealTopestViewControllerAndFrame {
    UIViewController *topViewController = [self topViewController];
    if (!topViewController) {
        return;
    }
    
    // 添加最顶层的
    [self addTopViewControllerName:topViewController];
    
    // 添加子视图
    UIViewController *showViewController = [self removeContainerViewController:topViewController];
    [self addSubViews:[showViewController.view subviews]];
    
    // 添加删除按钮
    [self addDeleteButtonForView:topViewController.view];
    
}

#pragma mark - Action
+ (void)deleteAction:(UIButton *)button {
    
    void(^removeTask)(UIView *) = ^(UIView *view) {
        NSArray *subViews = [view subviews];
        UIView *alertView;
        for (NSUInteger i = 0, max = [subViews count]; i < max; i++) {
            UIView *view = subViews[i];
            if (view.tag >= kLefexUIDebugTagOffset) {
                alertView = view;
                break;
            }
        }
        
        if (!alertView) {
            return;
        }
        
        [alertView removeFromSuperview];
        
        if (view.layer.borderWidth > 0) {
            view.layer.borderColor = [UIColor clearColor].CGColor;
            view.layer.borderWidth = 0;
        }
    };
    
    UIViewController *topViewController = [self topViewController];
    
    removeTask(topViewController.view);
    
    topViewController = [self removeContainerViewController:topViewController];
    
    NSArray *subViews = [topViewController.view subviews];
    for (NSUInteger i = 0, max = [subViews count]; i < max; i++) {
        UIView *view = subViews[i];
        if ([view.isAddAlert boolValue]) {
            removeTask(view);
        }
        
        if ([view respondsToSelector:@selector(visibleCells)]) {
            // UITableView或UICollectionView 标识cell
            UITableView *tableView = (UITableView *)view;
            NSArray<UITableViewCell *> *cells = [tableView visibleCells];
            [cells enumerateObjectsUsingBlock:^(UITableViewCell * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                removeTask(obj);
            }];
        }
    }
    
    [button removeFromSuperview];
}

#pragma mark - Add subviews
+ (void)addTopViewControllerName:(UIViewController *)topVC {
    // 如果是容器视图控制器，需要移除
    UIViewController *showViewController = [self removeContainerViewController:topVC];
    
    NSString *title = [NSString stringWithFormat:@"%@ %@", NSStringFromClass([showViewController class]), NSStringFromCGRect(showViewController.view.frame)];
    
    UILabel *alertLabel = [self addAlertViewToView:topVC.view title:title];
    [alertLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(topVC.view.mas_left).offset(4);
        make.top.equalTo(topVC.view.mas_top).offset(40);
        make.right.lessThanOrEqualTo(topVC.view.mas_right);
    }];
}

+ (void)addSubViews:(NSArray *)subViews {
    [subViews enumerateObjectsUsingBlock:^(UIView*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (obj.tag < kLefexUIDebugTagOffset) {
            UIColor *randomColor = [self randomColor];
            obj.layer.borderColor = randomColor.CGColor;
            obj.layer.borderWidth = 0.5;
            
            UILabel *alertLabel = [self addAlertViewToView:obj title:nil];
            alertLabel.backgroundColor = randomColor;
            [alertLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(obj.mas_left);
                make.centerY.equalTo(obj.mas_centerY);
                make.right.lessThanOrEqualTo(obj.mas_right);
            }];
            
            if ([obj respondsToSelector:@selector(visibleCells)]) {
                // UITableView或UICollectionView 标识cell
                UITableView *tableView = (UITableView *)obj;
                NSArray *cells = [tableView visibleCells];
                [self addSubViews:cells];
            }
        }
    }];
}

+ (void)addDeleteButtonForView:(UIView *)view {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.layer.cornerRadius = 20;
    button.layer.masksToBounds = YES;
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"X" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [button addTarget:self action:@selector(deleteAction:) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(view.mas_right).offset(-4);
        make.bottom.equalTo(view.mas_bottom).offset(-70);
        make.size.mas_equalTo(CGSizeMake(40, 40));
    }];
}

+ (UILabel *)addAlertViewToView:(UIView *)view title:(NSString *)title {
    UILabel *alertLabel = [[UILabel alloc] init];
    alertLabel.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5];
    alertLabel.textColor = [UIColor whiteColor];
    if (!title) {
        title = [NSString stringWithFormat:@"%@ %@", NSStringFromClass([view class]), NSStringFromCGRect(CGRectMake(@(view.frame.origin.x).integerValue, @(view.frame.origin.y).integerValue, @(view.frame.size.width).integerValue, @(view.frame.size.height).integerValue))];
    }
    alertLabel.text = title;
    alertLabel.font = [UIFont systemFontOfSize:12];
    alertLabel.numberOfLines = 0;
    [alertLabel adjustsFontSizeToFitWidth];
    alertLabel.tag = kLefexUIDebugTagOffset + CGRectGetMidY(view.frame);
    view.isAddAlert = @(1);
    [view addSubview:alertLabel];
    return alertLabel;
}

#pragma mark - Helper
+ (UIViewController *)topViewController {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    if ([[UIApplication sharedApplication].delegate respondsToSelector:@selector(window)]) {
        UIWindow *sharedApplicationDelegateWindow = (UIWindow *)[[UIApplication sharedApplication].delegate performSelector:@selector(window)];
        if (sharedApplicationDelegateWindow && [sharedApplicationDelegateWindow isKindOfClass:[UIWindow class]]) {
            window = sharedApplicationDelegateWindow;
        }
    }
    
    __block UIViewController *topViewController = window.rootViewController;
    while (YES) {
        if ([topViewController isKindOfClass:[UINavigationController class]]) {
            topViewController = [(UINavigationController *)topViewController topViewController];
        } else if ([topViewController isKindOfClass:[UITabBarController class]]) {
            topViewController = [(UITabBarController *)topViewController selectedViewController];
        } else if (topViewController.presentedViewController) {
            topViewController = topViewController.presentedViewController;
        } else {
            break;
        }
    }
    return topViewController;
}

+ (UIViewController *)removeContainerViewController:(UIViewController *)topViewController {
    __block UIViewController *resultViewController = topViewController;
    if (topViewController.childViewControllers.count > 0) {
        [topViewController.childViewControllers enumerateObjectsUsingBlock:^(__kindof UIViewController * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            UIViewController *resObj = obj;
            if ([obj isKindOfClass:[UINavigationController class]]) {
                resObj = [(UINavigationController *)obj topViewController];
            }
            resultViewController = resObj;
        }];
    }
    return resultViewController;
}

+ (UIColor *)randomColor {
    int R = (arc4random() % 256) ;
    int G = (arc4random() % 256) ;
    int B = (arc4random() % 256) ;
    return [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1];
}
@end
