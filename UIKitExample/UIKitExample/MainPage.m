//
//  MainPage.m
//  UIKitExample
//
//  Created by Büşra Akdağ on 13/04/16.
//  Copyright © 2016 Büşra Akdağ. All rights reserved.
//

#import "MainPage.h"

@interface MainPage ()

@end

@implementation MainPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UISwipeGestureRecognizer *shownMenuGesture=[[ UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(showMenu:)];
    shownMenuGesture.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:shownMenuGesture];
    
    CGRect desiredMenuFrame = CGRectMake(0.0, 20.0, 150.0, self.view.frame.size.height);
    self.menuComponent = [[MenuComponent alloc] initMenuWithFrame:desiredMenuFrame targetView:self.view direction:menuDirectionRightToLeft options:@[@"Download", @"Upload", @"Email", @"Settings", @"About"] optionImages:@[@"interface",@"interface",@"interface",@"interface",@"interface"]];
    
}
- (void)showMenu:(UIGestureRecognizer *)gestureRecognizer {
    [self.menuComponent showMenuWithSelectionHandler:^(NSInteger selectedOptionIndex) {
        NSLog(@"Seçilen index : %d", (int)selectedOptionIndex);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
