//
//  MainPage.h
//  UIKitExample
//
//  Created by Büşra Akdağ on 13/04/16.
//  Copyright © 2016 Büşra Akdağ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuComponent.h"

@interface MainPage : UIViewController

@property (nonatomic ,strong) MenuComponent *menuComponent;
- (void)showMenu:(UIGestureRecognizer *)gestureRecognizer;

@end
