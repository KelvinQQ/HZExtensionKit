//
//  HZProtocol.h
//  HZExtensionKit
//
//  Created by History on 15/6/10.
//  Copyright (c) 2015年 History. All rights reserved.
//

@import Foundation;
@import UIKit;

@protocol HZViewJumpProtocol <NSObject>

@optional
- (void)view:(UIView *)view pushViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)view:(UIView *)view presentViewController:(UIViewController *)viewController animated:(BOOL)animated completion:(void (^)(void))completion;

@end