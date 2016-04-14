//
//  AlertComponent.h
//  UIKitExample
//
//  Created by Büşra Akdağ on 14/04/16.
//  Copyright © 2016 Büşra Akdağ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AlertComponent : NSObject

- (id)initAlertWithTitle:(NSString *)title andMessage:(NSString *)message andButtonTitles:(NSArray *)buttonTitles andTargetView:(UIView *)targetView;


//initialize and configure the alert view
//initialize and configure the alert view's labels
//initialize and configure the alert view's buttons
- (void)setupAlertView;

- (void)setupBackgroundView;

- (void)showAlertViewWithSelectionHandler:(void(^)(NSInteger buttonIndex, NSString *buttonTitle))handler;

@end
