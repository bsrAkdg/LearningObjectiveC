//
//  MenuComponent.h
//  UIKitExample
//
//  Created by Büşra Akdağ on 13/04/16.
//  Copyright © 2016 Büşra Akdağ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef enum MenuDirectionOptionTypes{
    menuDirectionLeftToRight,
    menuDirectionRightToLeft
} MenuDirectionOptions;

@interface MenuComponent : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UIColor *menuBackgroundColor;  //used to set the menu's background color.
@property (nonatomic, strong) NSMutableDictionary *tableSettings; // configuration of menu.
@property (nonatomic) CGFloat optionCellHeight; // it specifies the row height of the table views cells.
@property (nonatomic) CGFloat acceleration; // this property specifies the magnitude of the push behavior.

- (id)initMenuWithFrame:(CGRect)frame targetView:(UIView *)targetView direction:(MenuDirectionOptions)direction options:(NSArray *)options optionImages:(NSArray *)optionImages;

- (void)setupMenuView; //the menu initially needs to be out of the screen’s visible area, we start by calculating the menu's initial frame.
- (void)setupBackgroundView;
- (void)setupOptionsTableView;
- (void)setInitialTableViewSettings;
- (void)setupSwipeGestureRecognizer;
- (void)hideMenuWithGesture:(UISwipeGestureRecognizer *)gesture;
//which we'll initialize and apply the necessary dynamic behaviors and well call this method every time the menu state needs to change. Start by updating the class's private class extension with this method:
- (void)toggleMenu;

- (void)showMenu;
- (void)showMenuWithSelectionHandler:(void(^)(NSInteger selectedOptionIndex))handler;


@end
