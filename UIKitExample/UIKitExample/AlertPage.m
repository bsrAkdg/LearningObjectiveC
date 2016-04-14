//
//  AlertPage.m
//  UIKitExample
//
//  Created by Büşra Akdağ on 14/04/16.
//  Copyright © 2016 Büşra Akdağ. All rights reserved.
//

#import "AlertPage.h"

@interface AlertPage ()

@property (nonatomic, strong) AlertComponent *alertComponent;

@end

@implementation AlertPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Initialize Alert Component
    self.alertComponent = [[AlertComponent alloc] initAlertWithTitle:@"Hello" andMessage:@"How Are You Today?" andButtonTitles:@[@"Fine", @"So So", @"Very bad"] andTargetView:self.view];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)showAlertView:(id)sender {
    [self.alertComponent showAlertViewWithSelectionHandler:^(NSInteger buttonIndex, NSString *buttonTitle) {
        NSLog(@"%ld, %@", (long)buttonIndex, buttonTitle);
    }];
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
