//
//  mySecondViewController.m
//  ViewControllersApp
//
//  Created by Büşra Akdağ on 03/12/15.
//  Copyright © 2015 Büşra Akdağ. All rights reserved.
//

#import "mySecondViewController.h"

@interface mySecondViewController ()

@end

@implementation mySecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"   %@   ", self.str);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//aşağdaki fonksiyon sayfayı çevirmeyi sağlar.
- (IBAction)sayfayiCevir:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
